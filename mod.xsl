<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.footer-rich">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-footer-rich" ox-mod="footer-rich">
            <xsl:if test="count(data/ui-entry/i) &gt; 0">
            	<div class="links">
	            	<xsl:for-each select="data/ui-entry/i[position() &lt; 5]">
	            		<a href=""><xsl:value-of select="title"/></a>
	            	</xsl:for-each>
	            </div>
            </xsl:if>
            <xsl:value-of select="data/ui-richtext" disable-output-escaping="yes"/>
        </div>
    </xsl:template>
</xsl:stylesheet>
