.class final Lorg/eclipse/jetty/io/nio/g;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/d;


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/g;->a:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->a:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->access$900(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)V

    .line 831
    return-void
.end method
