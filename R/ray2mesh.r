ray2mesh<-function(mesh1,tarmesh,tol=1,clean=TRUE,outname=NULL,readback=TRUE,inbound=FALSE,strict=FALSE)
{	
	options <- NULL
        if (inbound == TRUE)
          {
            options <- "--inbound" # set option to search along negative nromals first
          }
        if (strict == TRUE)
          {options <- paste(options,"--strict") #mark vertices that are not hit along rays
         }
	if (is.null(outname))
		{outname<-"project.mesh.ply"
		}
	mesh2ply(tarmesh,"target")
	mesh2ply(mesh1,"reference")
        if (is.null(mesh1$it))
          {
            system(paste("rayproject reference.ply target.ply -cloud ",options,"-t ",tol,"-o ",outname,sep=""))
          }
        else
          {
            system(paste("rayproject reference.ply target.ply ",options," -t ",tol,"-o ",outname,sep=""))
          }
          
	outmesh<-ply2mesh(outname,readnormals=TRUE)
	if (clean)
		{unlink(c("reference.ply","target.ply"))
		}
	if (readback)
		{return(outmesh)
		}
}
