<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.act-product-list">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-act-product-list" ox-mod="act-product-list">
	          <xsl:choose>
	          	<xsl:when test="count(data/ui-sale/i) &gt; 0">
	          		<ul>
	          			<xsl:for-each select="data/ui-sale/i">
	          			<li>
	          				<span class="img-box" style="background-image:url({img})"></span>
	          				<nobr class="title">
	          					<xsl:value-of select="title"/>
	          				</nobr>
	          				<nobr class="brief"><xsl:value-of select="slogan"/></nobr>
	          				<span class="price">
	          					&#160;
	          					<em><xsl:value-of select="price"/></em>
	          					&#160;
	          					<del><xsl:value-of select="orig_price"/></del>
	          				</span>
	          			</li>
	          			</xsl:for-each>
	          		</ul>
	          	</xsl:when>
	          	<xsl:otherwise>
	          		<center class="nodata">暂无商品数据</center>
	          	</xsl:otherwise>
	          </xsl:choose>
        </div>
    </xsl:template>
</xsl:stylesheet>
