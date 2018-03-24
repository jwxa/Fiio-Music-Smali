.class final Lorg/fourthline/cling/support/messagebox/parser/b;
.super Lorg/seamless/xml/DOMElement$Builder;
.source "MessageElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/DOMElement",
        "<",
        "Lorg/fourthline/cling/support/messagebox/parser/MessageElement;",
        "Lorg/fourthline/cling/support/messagebox/parser/MessageElement;",
        ">.Builder<",
        "Lorg/fourthline/cling/support/messagebox/parser/MessageElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/fourthline/cling/support/messagebox/parser/MessageElement;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;Lorg/seamless/xml/DOMElement;Lorg/seamless/xml/DOMElement;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/support/messagebox/parser/b;->a:Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    .line 41
    invoke-direct {p0, p2, p3}, Lorg/seamless/xml/DOMElement$Builder;-><init>(Lorg/seamless/xml/DOMElement;Lorg/seamless/xml/DOMElement;)V

    return-void
.end method


# virtual methods
.method public final synthetic build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    iget-object v1, p0, Lorg/fourthline/cling/support/messagebox/parser/b;->a:Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->getXpath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-object v0
.end method
