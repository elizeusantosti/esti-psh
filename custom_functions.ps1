function error{
   param(
      [CmdLetBinding][Parameter(mandatory=$true, position=0)]$code_block
      Try {$code_block}
      Catch {$_.Exception.GetType().FullName}
   )
}
