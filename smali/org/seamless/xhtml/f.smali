.class final Lorg/seamless/xhtml/f;
.super Lorg/seamless/xml/DOMElement$ArrayBuilder;
.source "XHTMLElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/DOMElement",
        "<",
        "Lorg/seamless/xhtml/XHTMLElement;",
        "Lorg/seamless/xhtml/XHTMLElement;",
        ">.ArrayBuilder<",
        "Lorg/seamless/xhtml/XHTMLElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/seamless/xhtml/XHTMLElement;


# direct methods
.method constructor <init>(Lorg/seamless/xhtml/XHTMLElement;Lorg/seamless/xml/DOMElement;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lorg/seamless/xhtml/f;->a:Lorg/seamless/xhtml/XHTMLElement;

    invoke-direct {p0, p1, p2}, Lorg/seamless/xml/DOMElement$ArrayBuilder;-><init>(Lorg/seamless/xml/DOMElement;Lorg/seamless/xml/DOMElement;)V

    return-void
.end method


# virtual methods
.method public final synthetic build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lorg/seamless/xhtml/XHTMLElement;

    iget-object v1, p0, Lorg/seamless/xhtml/f;->a:Lorg/seamless/xhtml/XHTMLElement;

    invoke-virtual {v1}, Lorg/seamless/xhtml/XHTMLElement;->getXpath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/seamless/xhtml/XHTMLElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public final bridge synthetic newChildrenArray(I)[Lorg/seamless/xml/DOMElement;
    .locals 1

    .prologue
    .line 47
    new-array v0, p1, [Lorg/seamless/xhtml/XHTMLElement;

    return-object v0
.end method
