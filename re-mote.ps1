$arr = Get-Content -Path ".re-mote"

$remoteName = $arr[0]

git remote remove $remoteName 2>$null
git remote add $remoteName $arr[1]

$usrn = Read-Host "Enter username"

foreach ($remote in $arr[1..($arr.Count - 1)]) {
    $secureToken = Read-Host "Enter token for $remote" -AsSecureString

    $ptr = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($secureToken)
    try {
        $tkn = [Runtime.InteropServices.Marshal]::PtrToStringBSTR($ptr)
    }
    finally {
        [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($ptr)
    }

    $insert = "$usrn`:$tkn@"
    $pushUrl = $remote -replace '^https://', "https://$insert"

    git remote set-url --add --push $remoteName $pushUrl

    $tkn = $null
    $insert = $null
    $pushUrl = $null
}