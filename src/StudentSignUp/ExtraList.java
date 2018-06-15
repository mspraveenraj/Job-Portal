package StudentSignUp;


import java.io.*;

/**
 *
 * @author Praveenraj
 */
public class ExtraList implements Serializable {

    private String[] otherCollegeName=new String[424];
    private String[] branchName=new String[483];
    private String[] countryName=new String[36];
    private String[] nationalityName=new String[36];
    private String[] gdegreeName=new String[7];
    private String[] pgdegreeName=new String[7];
    public ExtraList(){

    }
    public String[] getGdegreeName(){
    try{
            BufferedReader br=new BufferedReader(new FileReader ("F:/MS/OnlineJobPortal/src/StudentSignUp/gdegree.txt"));
            int l=1;
            String s;
            s=br.readLine();
            int C=0;
            while(s != null){
               this.gdegreeName[C++]=s;
                s=br.readLine();

            }
        }catch(Exception e){
            String s[]={e.getMessage(),e.toString()};
                return s;
        }
    return this.gdegreeName;

    }
    public String[] getCountryName(){
        try{
            BufferedReader br=new BufferedReader(new FileReader ("F:/MS/OnlineJobPortal/src/StudentSignUp/country.txt"));
            int l=1;
            String s;
            s=br.readLine();
            int C=0;
            while(s != null){
               this.countryName[C++]=s;
                s=br.readLine();

            }
        }catch(Exception e){
            String s[]={e.getMessage(),e.toString()};
                return s;
        }
        return this.countryName;

    }
    public String[] getPgdegreeName(){
        try{
            BufferedReader br=new BufferedReader(new FileReader ("F:/MS/OnlineJobPortal/src/StudentSignUp/pgdegree.txt"));
            int l=1;
            String s;
            s=br.readLine();
            int C=0;
            while(s != null){
               this.pgdegreeName[C++]=s;
                s=br.readLine();

            }
        }catch(Exception e){
            String s[]={e.getMessage(),e.toString()};
                return s;

        }
        
        return this.pgdegreeName;
    }
    public String[] getNationalityName()
    {
        try{
            BufferedReader br=new BufferedReader(new FileReader ("F:/MS/OnlineJobPortal/src/StudentSignUp/nationality.txt"));
            int l=1;
            String s;
            s=br.readLine();

          
            int C=0;
            while(s != null){
             
                nationalityName[C++]=s;
                s=br.readLine();

            }
        }catch(Exception e){
            String s[]={e.getMessage(),e.toString()};
                return s;

        }
        return this.nationalityName;
    }
    public String[] getBranchName()
    {
        try{
            BufferedReader br=new BufferedReader(new FileReader ("F:/MS/OnlineJobPortal/src/StudentSignUp/branch.txt"));
            int l=1;
            String s;
            s=br.readLine();

      
            int C=0;
            while(s != null){
               
                branchName[C++]=s;
                s=br.readLine();

            }
        }catch(Exception e){
            String s[]={e.getMessage(),e.toString()};
                return s;

        }
        return this.branchName;
    }
    public String[] getOtherCollegeName()
    {
      try{
            BufferedReader br=new BufferedReader(new FileReader ("F:/MS/OnlineJobPortal/src/StudentSignUp/college.txt"));
            int l=1;
            String s;
            s=br.readLine();
           
     
            int C=0;
            while(s != null){
              
                otherCollegeName[C++]=s;
                s=br.readLine();
            
            }
        }catch(Exception e){
            String s[]={e.getMessage(),e.toString()};
                return s;

        }
        return this.otherCollegeName;
    }
}
