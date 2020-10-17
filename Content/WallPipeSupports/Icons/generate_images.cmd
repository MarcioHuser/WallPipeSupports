for %%i in (PipelineSupportWall_123.png PipelineSupportWall_13.png PipelineSupportWall_23.png PipelineSupportWall_3.png PipelineSupportWall_12.png PipelineSupportWall_2.png) do (
	for %%s in (512 256) do (
		convert -verbose "%%~i" -resize %%sx%%s "%%~ni-%%s.png"
	)
)
