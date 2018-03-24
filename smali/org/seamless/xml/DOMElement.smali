.class public abstract Lorg/seamless/xml/DOMElement;
.super Ljava/lang/Object;
.source "DOMElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lorg/seamless/xml/DOMElement;",
        "PARENT:",
        "Lorg/seamless/xml/DOMElement;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/seamless/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.ArrayBuilder<TCHI",
            "LD;",
            ">;"
        }
    .end annotation
.end field

.field public final PARENT_BUILDER:Lorg/seamless/xml/DOMElement$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/seamless/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.Builder<TPARENT;>;"
        }
    .end annotation
.end field

.field private element:Lorg/w3c/dom/Element;

.field private final xpath:Ljavax/xml/xpath/XPath;


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/seamless/xml/DOMElement;->xpath:Ljavax/xml/xpath/XPath;

    .line 51
    iput-object p2, p0, Lorg/seamless/xml/DOMElement;->element:Lorg/w3c/dom/Element;

    .line 52
    invoke-virtual {p0, p0}, Lorg/seamless/xml/DOMElement;->createParentBuilder(Lorg/seamless/xml/DOMElement;)Lorg/seamless/xml/DOMElement$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/xml/DOMElement;->PARENT_BUILDER:Lorg/seamless/xml/DOMElement$Builder;

    .line 53
    invoke-virtual {p0, p0}, Lorg/seamless/xml/DOMElement;->createChildBuilder(Lorg/seamless/xml/DOMElement;)Lorg/seamless/xml/DOMElement$ArrayBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    .line 54
    return-void
.end method


# virtual methods
.method protected adoptOrImport(Lorg/w3c/dom/Document;Lorg/seamless/xml/DOMElement;Z)Lorg/seamless/xml/DOMElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "TCHI",
            "LD;",
            "Z)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    if-eqz p3, :cond_1

    .line 174
    iget-object v1, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    invoke-virtual {p2}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {v1, v0}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;

    move-result-object p2

    .line 183
    :cond_0
    :goto_0
    return-object p2

    .line 178
    :cond_1
    iget-object v1, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    invoke-virtual {p2}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {v1, v0}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;

    move-result-object p2

    goto :goto_0
.end method

.method public appendChild(Lorg/seamless/xml/DOMElement;Z)Lorg/seamless/xml/DOMElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCHI",
            "LD;",
            "Z)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/seamless/xml/DOMElement;->adoptOrImport(Lorg/w3c/dom/Document;Lorg/seamless/xml/DOMElement;Z)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {v0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 144
    return-object v0
.end method

.method public createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/seamless/xml/DOMElement;->createChild(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    return-object v0
.end method

.method public createChild(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xml/DOMElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v1, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {v0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 138
    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract createChildBuilder(Lorg/seamless/xml/DOMElement;)Lorg/seamless/xml/DOMElement$ArrayBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/xml/DOMElement;",
            ")",
            "Lorg/seamless/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.ArrayBuilder<TCHI",
            "LD;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract createParentBuilder(Lorg/seamless/xml/DOMElement;)Lorg/seamless/xml/DOMElement$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/xml/DOMElement;",
            ")",
            "Lorg/seamless/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.Builder<TPARENT;>;"
        }
    .end annotation
.end method

.method public findChildWithIdentifier(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "descendant::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {p0, v2}, Lorg/seamless/xml/DOMElement;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[@id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/seamless/xml/DOMElement;->getXPathChildElements(Lorg/seamless/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/seamless/xml/DOMElement;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findChildren(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "descendant::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/seamless/xml/DOMElement;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/seamless/xml/DOMElement;->getXPathChildElements(Lorg/seamless/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->newChildrenArray(I)[Lorg/seamless/xml/DOMElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/xml/DOMElement;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildren()[Lorg/seamless/xml/DOMElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 91
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 93
    iget-object v4, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {v4, v0}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->newChildrenArray(I)[Lorg/seamless/xml/DOMElement;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/xml/DOMElement;

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    invoke-virtual {p0, p1}, Lorg/seamless/xml/DOMElement;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/seamless/xml/DOMElement;->getXPathChildElements(Lorg/seamless/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->newChildrenArray(I)[Lorg/seamless/xml/DOMElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/xml/DOMElement;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/seamless/xml/DOMElement;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[1]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/seamless/xml/DOMElement;->getXPathChildElement(Lorg/seamless/xml/DOMElement$Builder;Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/seamless/xml/DOMElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPARENT;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Lorg/seamless/xml/DOMElement;->PARENT_BUILDER:Lorg/seamless/xml/DOMElement$Builder;

    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {v1, v0}, Lorg/seamless/xml/DOMElement$Builder;->build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lorg/seamless/xml/DOMElement;->getChildren(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;

    move-result-object v0

    .line 106
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 107
    new-instance v0, Lorg/seamless/xml/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required single child element of \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getW3CElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/seamless/xml/DOMElement;->element:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getXPathChildElement(Lorg/seamless/xml/DOMElement$Builder;Ljava/lang/String;)Lorg/seamless/xml/DOMElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.Builder<TCHI",
            "LD;",
            ">;",
            "Ljava/lang/String;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0, p2, v1}, Lorg/seamless/xml/DOMElement;->getXPathResult(Lorg/w3c/dom/Node;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 237
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p1, v0}, Lorg/seamless/xml/DOMElement$Builder;->build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXPathChildElements(Lorg/seamless/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.Builder<TCHI",
            "LD;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<TCHI",
            "LD;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p0, p1, p2}, Lorg/seamless/xml/DOMElement;->getXPathElements(Lorg/seamless/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getXPathElements(Lorg/seamless/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;
    .locals 4

    .prologue
    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0, p2, v1}, Lorg/seamless/xml/DOMElement;->getXPathResult(Lorg/w3c/dom/Node;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 243
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 244
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p1, v1}, Lorg/seamless/xml/DOMElement$Builder;->build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;

    move-result-object v1

    .line 245
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 247
    :cond_0
    return-object v3
.end method

.method public getXPathParentElement(Lorg/seamless/xml/DOMElement$Builder;Ljava/lang/String;)Lorg/seamless/xml/DOMElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.Builder<TPARENT;>;",
            "Ljava/lang/String;",
            ")TPARENT;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0, p2, v1}, Lorg/seamless/xml/DOMElement;->getXPathResult(Lorg/w3c/dom/Node;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 232
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p1, v0}, Lorg/seamless/xml/DOMElement$Builder;->build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXPathParentElements(Lorg/seamless/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.Builder<TCHI",
            "LD;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<TPARENT;>;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0, p1, p2}, Lorg/seamless/xml/DOMElement;->getXPathElements(Lorg/seamless/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getXPathResult(Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/seamless/xml/DOMElement;->getXPathResult(Lorg/w3c/dom/Node;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getXPathResult(Lorg/w3c/dom/Node;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 261
    if-nez p3, :cond_0

    .line 262
    :try_start_0
    iget-object v0, p0, Lorg/seamless/xml/DOMElement;->xpath:Ljavax/xml/xpath/XPath;

    invoke-interface {v0, p2, p1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/seamless/xml/DOMElement;->xpath:Ljavax/xml/xpath/XPath;

    invoke-interface {v0, p2, p1, p3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getXPathString(Ljavax/xml/xpath/XPath;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lorg/seamless/xml/DOMElement;->getXPathResult(Lorg/w3c/dom/Node;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXpath()Ljavax/xml/xpath/XPath;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/seamless/xml/DOMElement;->xpath:Ljavax/xml/xpath/XPath;

    return-object v0
.end method

.method protected prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 219
    return-object p1
.end method

.method public removeChild(Lorg/seamless/xml/DOMElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCHI",
            "LD;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p1}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 161
    return-void
.end method

.method public removeChildren()V
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 165
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 166
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 167
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method public replaceChild(Lorg/seamless/xml/DOMElement;Lorg/seamless/xml/DOMElement;Z)Lorg/seamless/xml/DOMElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCHI",
            "LD;",
            "TCHI",
            "LD;",
            "Z)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/seamless/xml/DOMElement;->adoptOrImport(Lorg/w3c/dom/Document;Lorg/seamless/xml/DOMElement;Z)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {v0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p1}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 150
    return-object v0
.end method

.method public replaceEqualChild(Lorg/seamless/xml/DOMElement;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 154
    invoke-virtual {p0, p2}, Lorg/seamless/xml/DOMElement;->findChildWithIdentifier(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    .line 155
    invoke-virtual {p1, p2}, Lorg/seamless/xml/DOMElement;->findChildWithIdentifier(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v1

    .line 156
    invoke-virtual {v0}, Lorg/seamless/xml/DOMElement;->getParent()Lorg/seamless/xml/DOMElement;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lorg/seamless/xml/DOMElement;->replaceChild(Lorg/seamless/xml/DOMElement;Lorg/seamless/xml/DOMElement;Z)Lorg/seamless/xml/DOMElement;

    .line 157
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xml/DOMElement;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/seamless/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 70
    return-object p0
.end method

.method public toSimpleXMLString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 195
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 196
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 197
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 201
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :cond_1
    const-string v0, "/>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "UNBOUND"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
