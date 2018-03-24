.class public Lorg/seamless/xml/SAXParser$SimpleErrorHandler;
.super Ljava/lang/Object;
.source "SAXParser.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# instance fields
.field final synthetic this$0:Lorg/seamless/xml/SAXParser;


# direct methods
.method public constructor <init>(Lorg/seamless/xml/SAXParser;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lorg/seamless/xml/SAXParser$SimpleErrorHandler;->this$0:Lorg/seamless/xml/SAXParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
