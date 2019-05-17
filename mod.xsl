<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.footer-rich">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-footer-rich" ox-mod="footer-rich">
            <xsl:if test="count(data/the-site/channels/i) &gt; 0">
            	<div class="links">
	            	<xsl:for-each select="data/the-site/channels/i[position() &lt; 5]">
	            		<a href="{href}"><xsl:value-of select="title"/></a>
	            	</xsl:for-each>
	            </div>
            </xsl:if>
            <p>
                © <xsl:value-of select="data/the-site/copyright"/> 版权所有
            </p>
            <p>
                <xsl:value-of select="data/the-site/icp"/>
            </p>
            
        </div>
    </xsl:template>
</xsl:stylesheet>
