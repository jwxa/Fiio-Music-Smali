.class public Lorg/seamless/xhtml/XHTMLElement;
.super Lorg/seamless/xml/DOMElement;
.source "XHTMLElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/DOMElement",
        "<",
        "Lorg/seamless/xhtml/XHTMLElement;",
        "Lorg/seamless/xhtml/XHTMLElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final XPATH_PREFIX:Ljava/lang/String; = "h"


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/seamless/xml/DOMElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    .line 33
    return-void
.end method


# virtual methods
.method public createChild(Lorg/seamless/xhtml/XHTML$ELEMENT;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p1}, Lorg/seamless/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-super {p0, v0, v1}, Lorg/seamless/xml/DOMElement;->createChild(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/seamless/xhtml/XHTMLElement;

    return-object v0
.end method

.method protected createChildBuilder(Lorg/seamless/xml/DOMElement;)Lorg/seamless/xml/DOMElement$ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/xml/DOMElement;",
            ")",
            "Lorg/seamless/xml/DOMElement",
            "<",
            "Lorg/seamless/xhtml/XHTMLElement;",
            "Lorg/seamless/xhtml/XHTMLElement;",
            ">.ArrayBuilder<",
            "Lorg/seamless/xhtml/XHTMLElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lorg/seamless/xhtml/f;

    invoke-direct {v0, p0, p1}, Lorg/seamless/xhtml/f;-><init>(Lorg/seamless/xhtml/XHTMLElement;Lorg/seamless/xml/DOMElement;)V

    return-object v0
.end method

.method protected createParentBuilder(Lorg/seamless/xml/DOMElement;)Lorg/seamless/xml/DOMElement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/xml/DOMElement;",
            ")",
            "Lorg/seamless/xml/DOMElement",
            "<",
            "Lorg/seamless/xhtml/XHTMLElement;",
            "Lorg/seamless/xhtml/XHTMLElement;",
            ">.Builder<",
            "Lorg/seamless/xhtml/XHTMLElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lorg/seamless/xhtml/e;

    invoke-direct {v0, p0, p1}, Lorg/seamless/xhtml/e;-><init>(Lorg/seamless/xhtml/XHTMLElement;Lorg/seamless/xml/DOMElement;)V

    return-object v0
.end method

.method public findAllAnchors()[Lorg/seamless/xhtml/Anchor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0, v0}, Lorg/seamless/xhtml/XHTMLElement;->findAllAnchors(Ljava/lang/String;Ljava/lang/String;)[Lorg/seamless/xhtml/Anchor;

    move-result-object v0

    return-object v0
.end method

.method public findAllAnchors(Ljava/lang/String;)[Lorg/seamless/xhtml/Anchor;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/seamless/xhtml/XHTMLElement;->findAllAnchors(Ljava/lang/String;Ljava/lang/String;)[Lorg/seamless/xhtml/Anchor;

    move-result-object v0

    return-object v0
.end method

.method public findAllAnchors(Ljava/lang/String;Ljava/lang/String;)[Lorg/seamless/xhtml/Anchor;
    .locals 7

    .prologue
    .line 153
    sget-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->a:Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-virtual {p0, v0, p2}, Lorg/seamless/xhtml/XHTMLElement;->findChildrenWithClass(Lorg/seamless/xhtml/XHTML$ELEMENT;Ljava/lang/String;)[Lorg/seamless/xhtml/XHTMLElement;

    move-result-object v1

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 156
    sget-object v5, Lorg/seamless/xhtml/XHTML$ATTR;->href:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {v4, v5}, Lorg/seamless/xhtml/XHTMLElement;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v5

    .line 157
    if-eqz p1, :cond_0

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    :cond_0
    new-instance v5, Lorg/seamless/xhtml/Anchor;

    invoke-virtual {p0}, Lorg/seamless/xhtml/XHTMLElement;->getXpath()Ljavax/xml/xpath/XPath;

    move-result-object v6

    invoke-virtual {v4}, Lorg/seamless/xhtml/XHTMLElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lorg/seamless/xhtml/Anchor;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/seamless/xhtml/Anchor;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/xhtml/Anchor;

    return-object v0
.end method

.method public findChildren(Lorg/seamless/xhtml/XHTML$ELEMENT;)[Lorg/seamless/xhtml/XHTMLElement;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p1}, Lorg/seamless/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/seamless/xml/DOMElement;->findChildren(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, [Lorg/seamless/xhtml/XHTMLElement;

    return-object v0
.end method

.method public findChildrenWithClass(Lorg/seamless/xhtml/XHTML$ELEMENT;Ljava/lang/String;)[Lorg/seamless/xhtml/XHTMLElement;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 165
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-virtual {p0, p1}, Lorg/seamless/xhtml/XHTMLElement;->findChildren(Lorg/seamless/xhtml/XHTML$ELEMENT;)[Lorg/seamless/xhtml/XHTMLElement;

    move-result-object v4

    .line 167
    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 168
    if-nez p2, :cond_1

    .line 169
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v6}, Lorg/seamless/xhtml/XHTMLElement;->getClasses()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v0, v1

    :goto_2
    if-ge v0, v8, :cond_0

    aget-object v9, v7, v0

    .line 172
    invoke-virtual {v9, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 173
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 179
    :cond_3
    iget-object v0, p0, Lorg/seamless/xhtml/XHTMLElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->newChildrenArray(I)[Lorg/seamless/xml/DOMElement;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/xhtml/XHTMLElement;

    return-object v0
.end method

.method public getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p1}, Lorg/seamless/xhtml/XHTML$ATTR;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/XHTMLElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Lorg/seamless/xhtml/XHTML$ELEMENT;)[Lorg/seamless/xhtml/XHTMLElement;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p1}, Lorg/seamless/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/seamless/xml/DOMElement;->getChildren(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, [Lorg/seamless/xhtml/XHTMLElement;

    return-object v0
.end method

.method public getClasses()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    const-string v0, "class"

    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/XHTMLElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConstant()Lorg/seamless/xhtml/XHTML$ELEMENT;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/seamless/xhtml/XHTMLElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/seamless/xhtml/XHTML$ELEMENT;->valueOf(Ljava/lang/String;)Lorg/seamless/xhtml/XHTML$ELEMENT;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChild(Lorg/seamless/xhtml/XHTML$ELEMENT;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p1}, Lorg/seamless/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/seamless/xml/DOMElement;->getFirstChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/seamless/xhtml/XHTMLElement;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->id:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/XHTMLElement;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOption(Ljava/lang/String;)Lorg/seamless/xhtml/Option;
    .locals 5

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/seamless/xhtml/XHTMLElement;->getOptions()[Lorg/seamless/xhtml/Option;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 139
    invoke-virtual {v0}, Lorg/seamless/xhtml/Option;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    :goto_1
    return-object v0

    .line 138
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getOptions()[Lorg/seamless/xhtml/Option;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->style:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/XHTMLElement;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/seamless/xhtml/Option;->fromString(Ljava/lang/String;)[Lorg/seamless/xhtml/Option;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->title:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/XHTMLElement;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "h:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 0

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Lorg/seamless/xml/DOMElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    .line 191
    return-object p0
.end method

.method public setAttribute(Lorg/seamless/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p1}, Lorg/seamless/xhtml/XHTML$ATTR;->name()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lorg/seamless/xml/DOMElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    .line 91
    return-object p0
.end method

.method public bridge synthetic setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xml/DOMElement;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/seamless/xhtml/XHTMLElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    move-result-object v0

    return-object v0
.end method

.method public setClasses(Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 1

    .prologue
    .line 113
    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, Lorg/seamless/xhtml/XHTMLElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    .line 114
    return-object p0
.end method

.method public setClasses([Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 3

    .prologue
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 120
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const-string v0, "class"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/seamless/xhtml/XHTMLElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    .line 124
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 0

    .prologue
    .line 184
    invoke-super {p0, p1}, Lorg/seamless/xml/DOMElement;->setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    .line 185
    return-object p0
.end method

.method public bridge synthetic setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lorg/seamless/xhtml/XHTMLElement;->setContent(Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->id:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0, p1}, Lorg/seamless/xhtml/XHTMLElement;->setAttribute(Lorg/seamless/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    .line 100
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->title:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0, p1}, Lorg/seamless/xhtml/XHTMLElement;->setAttribute(Lorg/seamless/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    .line 109
    return-object p0
.end method
