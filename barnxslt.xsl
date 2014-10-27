<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/barn">
    
    <html>
        <head>
            <title>Cross N Ranch</title>
            <link rel="stylesheet" type="text/css" href="barncss.css" />
            <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'/>
            <script src="sorttable.js"></script>
        </head>
    
 <div id="container">
    <body>
   
    <header>   
                <h1>Cross N Ranch</h1>
     </header>


<h2>
    Welcome!
</h2><p>
    For an easy way to keep track of the frequently asked questions about the horses we currently have at Cross N Ranch,
    I have decided to create this table. Enjoy! To sort this table to your liking, click on the collumn headings. 
</p>

<h2>About Us</h2>
<p>Cross N Ranch started in the early 1980's in the small town of Era, Texas. Over the years, our focus has remained on strong bloodlines in the
American Quarter Horse Association. We have a small set of mares that we use to keep our blood lines going and to produce new foals.</p>
<br></br>
<p>
    All of our earnings are uptodate as of September 2014. You can also check earnings <a href="http://www.nchacutting.com/ag/shows/earnings_lookup.php"> here</a>.
    To get in contact with us, please contact Lisa Crossen at 123-456-7890.
</p>
      
 <table class="sortable">
	<tr id="headings">
            <th class="small2"> Barn Name </th> 
            <th class="medium">Registered Name </th>
            <th class="medium">Dam </th>
            <th class="medium">Sire</th>
           <th class="small">Sex</th>
	   <th class="small">Color</th>
	    <th class="small">Birth Year</th>
	    <th class="medium">Earnings</th>
	    <th class="medium">Owner</th>
        </tr>
        
    <xsl:for-each select="horse">
    <xsl:sort select="barn_name"/>  
        <tr>
            <td class="small2"> <xsl:value-of select="barn_name" /></td> 
            <td class="medium"> <xsl:value-of select="registered_name" /> </td>
            <td class="medium"> <xsl:value-of select="dam" /> </td>
            <td class="medium"> <xsl:value-of select="sire" /> </td>
	    <td class="small"> <xsl:value-of select="sex" /> </td>
	     <td class="small"> <xsl:value-of select="color" /> </td>
            <td class="small2"> <xsl:value-of select="birth_year" /> </td>
            <td class="medium"> <xsl:value-of select="earnings" /> </td>
            <td class="medium"> <xsl:value-of select="owner" /> </td>
        </tr>
    </xsl:for-each>
    
  </table>
  
 

</body>
 </div>
    </html>
</xsl:template>
</xsl:stylesheet>