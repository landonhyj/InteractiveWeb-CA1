<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
            <table id="bookTable" class="indent">
                <thead>
                    <tr>
                        <th colspan ="4">Bookstore's list</th>
                    </tr>    
                    <tr>   
                        <th>Title</th>
                        <th>Author</th>
                        <th>Year</th>
                        <th>Price</th> 
                    </tr> 
                </thead>    
                     
                <tbody>
                    <xsl:for-each select="/bookstore/book">
                        <tr>
                            <td colspan="4">
                                <xsl:value-of select="@category"/>
                            </td>
                        </tr>

                        <xsl:for-each select="details">
                            <tr id="{position()}">
                                <tr>
                                    <td>
                                        <xsl:value-of select="title" />
                                    </td>

                                    <td>
                                        <xsl:value-of select="author" />
                                    </td>

                                    <td>
                                        <xsl:value-of select="year" />
                                    </td>

                                    <td align="right">
                                        <xsl:value-of select="price" />
                                    </td>
                                </tr>  
                            </tr>   

                        </xsl:for-each>
                    </xsl:for-each>       
               </tbody> 
            </table>
    </xsl:template>
</xsl:stylesheet>

                           

      





               
    
    
            
            
      