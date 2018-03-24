.class public Lc/c/b;
.super Ljava/lang/Object;
.source "AsyncEvent.java"


# instance fields
.field private context:Lc/c/a;

.field private request:Lc/c/ac;

.field private response:Lc/c/ai;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lc/c/a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0, v0, v0}, Lc/c/b;-><init>(Lc/c/a;Lc/c/ac;Lc/c/ai;Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lc/c/a;Lc/c/ac;Lc/c/ai;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lc/c/b;-><init>(Lc/c/a;Lc/c/ac;Lc/c/ai;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lc/c/a;Lc/c/ac;Lc/c/ai;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lc/c/b;->context:Lc/c/a;

    .line 105
    iput-object p2, p0, Lc/c/b;->request:Lc/c/ac;

    .line 106
    iput-object p3, p0, Lc/c/b;->response:Lc/c/ai;

    .line 107
    iput-object p4, p0, Lc/c/b;->throwable:Ljava/lang/Throwable;

    .line 108
    return-void
.end method

.method public constructor <init>(Lc/c/a;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0, v0, p2}, Lc/c/b;-><init>(Lc/c/a;Lc/c/ac;Lc/c/ai;Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method


# virtual methods
.method public getAsyncContext()Lc/c/a;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lc/c/b;->context:Lc/c/a;

    return-object v0
.end method

.method public getSuppliedRequest()Lc/c/ac;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lc/c/b;->request:Lc/c/ac;

    return-object v0
.end method

.method public getSuppliedResponse()Lc/c/ai;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lc/c/b;->response:Lc/c/ai;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lc/c/b;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
