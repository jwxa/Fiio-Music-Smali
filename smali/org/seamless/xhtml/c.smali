.class final Lorg/seamless/xhtml/c;
.super Lorg/seamless/xml/DOMElement$Builder;
.source "Root.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/DOMElement",
        "<",
        "Lorg/seamless/xhtml/XHTMLElement;",
        "Lorg/seamless/xhtml/XHTMLElement;",
        ">.Builder<",
        "Lorg/seamless/xhtml/Head;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/seamless/xhtml/Root;


# direct methods
.method constructor <init>(Lorg/seamless/xhtml/Root;Lorg/seamless/xml/DOMElement;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lorg/seamless/xhtml/c;->a:Lorg/seamless/xhtml/Root;

    invoke-direct {p0, p1, p2}, Lorg/seamless/xml/DOMElement$Builder;-><init>(Lorg/seamless/xml/DOMElement;Lorg/seamless/xml/DOMElement;)V

    return-void
.end method


# virtual methods
.method public final synthetic build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lorg/seamless/xhtml/Head;

    iget-object v1, p0, Lorg/seamless/xhtml/c;->a:Lorg/seamless/xhtml/Root;

    invoke-virtual {v1}, Lorg/seamless/xhtml/Root;->getXpath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/seamless/xhtml/Head;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-object v0
.end method
