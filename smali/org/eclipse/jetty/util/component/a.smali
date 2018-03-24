.class final Lorg/eclipse/jetty/util/component/a;
.super Ljava/lang/Object;
.source "AggregateLifeCycle.java"


# instance fields
.field final a:Ljava/lang/Object;

.field volatile b:Z

.field final synthetic c:Lorg/eclipse/jetty/util/component/AggregateLifeCycle;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/util/component/AggregateLifeCycle;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lorg/eclipse/jetty/util/component/a;->c:Lorg/eclipse/jetty/util/component/AggregateLifeCycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/component/a;->b:Z

    .line 56
    iput-object p2, p0, Lorg/eclipse/jetty/util/component/a;->a:Ljava/lang/Object;

    .line 57
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/eclipse/jetty/util/component/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
