<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <body>
            <xsl:for-each select="testResult/property">
               <xsl:choose>
                  <xsl:when test="@name='performanceData'">
                     <h2>
                        <xsl:value-of select="@name" />
                     </h2>
                     <table border="1">
                     <tr>
                        <th>index</th><th>clientName</th><th>throughput</th>
                     </tr>
                        <xsl:for-each select="list/tpdata">
                           <tr>
                              <td>
                                 <xsl:value-of select="@index" />
                              </td>
                              <td>
                                 <xsl:value-of select="@clientName" />
                              </td>
                              <td>
                                 <xsl:value-of select="@throughput" />
                              </td>
                           </tr>
                        </xsl:for-each>
                     </table>
                     <table border="1">
                        <h3>CPU</h3>
                     <tr>
                        <th>index</th>
                        <th>r</th>
                        <th>b</th>
                        <th>swpd</th>
                        <th>free</th>
                        <th>buff</th>
                        <th>cache</th>
                        <th>si</th>
                        <th>so</th>
                        <th>bi</th>
                        <th>bo</th>
                        <th>in</th>
                        <th>cs</th>
                        <th>us</th>
                        <th>sy</th>
                        <th>id</th>
                        <th>wa</th>
                        <th>st</th>
                     </tr>
                        <xsl:for-each select="list/cpudata">
                           <tr>
                              <td>
                                 <xsl:value-of select="@index" />
                              </td>
                              <td>
                                 <xsl:value-of select="@r" />
                              </td>
                              <td>
                                 <xsl:value-of select="@b" />
                              </td>
                              <td>
                                 <xsl:value-of select="@swpd" />
                              </td>
                              <td>
                                 <xsl:value-of select="@free" />
                              </td>
                              <td>
                                 <xsl:value-of select="@buff" />
                              </td>
                              <td>
                                 <xsl:value-of select="@cache" />
                              </td>
                              <td>
                                 <xsl:value-of select="@si" />
                              </td>
                              <td>
                                 <xsl:value-of select="@so" />
                              </td>
                              <td>
                                 <xsl:value-of select="@bi" />
                              </td>
                              <td>
                                 <xsl:value-of select="@bo" />
                              </td>
                              <td>
                                 <xsl:value-of select="@in" />
                              </td>
                              <td>
                                 <xsl:value-of select="@cs" />
                              </td>
                              <td>
                                 <xsl:value-of select="@us" />
                              </td>
                              <td>
                                 <xsl:value-of select="@sy" />
                              </td>
                              <td>
                                 <xsl:value-of select="@id" />
                              </td>
                              <td>
                                 <xsl:value-of select="@wa" />
                              </td>
                              <td>
                                 <xsl:value-of select="@st" />
                              </td>
                           </tr>
                        </xsl:for-each>
                     </table>
                  </xsl:when>
                  <xsl:otherwise>
                     <h2>
                        <xsl:value-of select="@name" />
                     </h2>
                     <table border="1">
                        <xsl:for-each select="props/prop">
                           <tr>
                              <td>
                                 <xsl:value-of select="@key" />
                              </td>
                              <td>
                                 <xsl:value-of select="." />
                              </td>
                           </tr>
                        </xsl:for-each>
                     </table>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:for-each>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>