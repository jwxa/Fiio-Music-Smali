.class public Lorg/eclipse/jetty/continuation/ContinuationFilter;
.super Ljava/lang/Object;
.source "ContinuationFilter.java"

# interfaces
.implements Lc/c/e;


# static fields
.field static __debug:Z

.field static _initialized:Z


# instance fields
.field _context:Lc/c/s;

.field private _debug:Z

.field private _faux:Z

.field private _filtered:Z

.field private _jetty6:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Lc/c/s;

    invoke-interface {v0, p1}, Lc/c/s;->log(Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method private debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 156
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    if-eqz v0, :cond_0

    .line 158
    instance-of v0, p2, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Lc/c/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/c/s;->log(Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Lc/c/s;

    invoke-interface {v0, p1, p2}, Lc/c/s;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public doFilter(Lc/c/ac;Lc/c/ai;Lc/c/f;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_filtered:Z

    if-eqz v0, :cond_b

    .line 102
    const-string v0, "org.eclipse.jetty.continuation"

    invoke-interface {p1, v0}, Lc/c/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/Continuation;

    .line 104
    iget-boolean v3, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_faux:Z

    if-eqz v3, :cond_5

    if-eqz v0, :cond_0

    instance-of v3, v0, Lorg/eclipse/jetty/continuation/a;

    if-nez v3, :cond_5

    .line 106
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/continuation/a;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/continuation/a;-><init>(Lc/c/ac;)V

    .line 107
    const-string v3, "org.eclipse.jetty.continuation"

    invoke-interface {p1, v3, v0}, Lc/c/ac;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    move-object v3, v0

    move v0, v1

    .line 113
    :goto_1
    if-nez v0, :cond_c

    .line 117
    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v3, p2}, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;->enter(Lc/c/ai;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    :cond_1
    invoke-interface {p3, p1, p2}, Lc/c/f;->a(Lc/c/ac;Lc/c/ai;)V
    :try_end_0
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_2
    if-nez v3, :cond_3

    .line 127
    const-string v0, "org.eclipse.jetty.continuation"

    invoke-interface {p1, v0}, Lc/c/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;

    move-object v3, v0

    .line 129
    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;->exit()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    move v0, v2

    goto :goto_1

    .line 110
    :cond_5
    check-cast v0, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;

    goto :goto_0

    :cond_6
    move v0, v1

    .line 129
    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    .line 122
    :try_start_1
    const-string v4, "faux"

    invoke-direct {p0, v4, v0}, Lorg/eclipse/jetty/continuation/ContinuationFilter;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    if-nez v3, :cond_7

    .line 127
    const-string v0, "org.eclipse.jetty.continuation"

    invoke-interface {p1, v0}, Lc/c/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;

    move-object v3, v0

    .line 129
    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;->exit()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_1

    .line 126
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-nez v3, :cond_d

    .line 127
    const-string v0, "org.eclipse.jetty.continuation"

    invoke-interface {p1, v0}, Lc/c/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;

    .line 129
    :goto_2
    if-eqz v0, :cond_a

    invoke-interface {v0}, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;->exit()Z

    :cond_a
    throw v1

    .line 137
    :cond_b
    :try_start_2
    invoke-interface {p3, p1, p2}, Lc/c/f;->a(Lc/c/ac;Lc/c/ai;)V
    :try_end_2
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    :cond_c
    :goto_3
    return-void

    .line 139
    :catch_1
    move-exception v0

    .line 141
    const-string v1, "caught"

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jetty/continuation/ContinuationFilter;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_d
    move-object v0, v3

    goto :goto_2
.end method

.method public init(Lc/c/g;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 65
    const-string v0, "org.eclipse.jetty.servlet"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 66
    invoke-interface {p1}, Lc/c/g;->getServletContext()Lc/c/s;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Lc/c/s;

    .line 68
    const-string v0, "debug"

    invoke-interface {p1, v0}, Lc/c/g;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_5

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    .line 70
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    if-eqz v0, :cond_0

    .line 71
    sput-boolean v1, Lorg/eclipse/jetty/continuation/ContinuationFilter;->__debug:Z

    .line 73
    :cond_0
    const-string v0, "jetty6"

    invoke-interface {p1, v0}, Lc/c/g;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    const-string v0, "partial"

    invoke-interface {p1, v0}, Lc/c/g;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_1
    if-eqz v0, :cond_6

    .line 77
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move-object v3, p0

    .line 79
    :goto_1
    iput-boolean v0, v3, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_jetty6:Z

    .line 81
    const-string v0, "faux"

    invoke-interface {p1, v0}, Lc/c/g;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_8

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move-object v3, p0

    .line 85
    :goto_2
    iput-boolean v0, v3, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_faux:Z

    .line 87
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_faux:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_jetty6:Z

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_filtered:Z

    .line 88
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Lc/c/s;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ContinuationFilter  jetty="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " jetty6="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_jetty6:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " faux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_faux:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " filtered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_filtered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " servlet3="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lc/c/s;->log(Ljava/lang/String;)V

    .line 95
    :cond_4
    sput-boolean v1, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_initialized:Z

    .line 96
    return-void

    :cond_5
    move v0, v2

    .line 69
    goto/16 :goto_0

    .line 79
    :cond_6
    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    if-eqz v0, :cond_7

    if-nez v4, :cond_7

    move v0, v1

    move-object v3, p0

    goto :goto_1

    :cond_7
    move v0, v2

    move-object v3, p0

    goto :goto_1

    .line 85
    :cond_8
    if-nez v4, :cond_9

    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_jetty6:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Lc/c/s;

    invoke-interface {v0}, Lc/c/s;->getMajorVersion()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_9

    move v0, v1

    move-object v3, p0

    goto :goto_2

    :cond_9
    move v0, v2

    move-object v3, p0

    goto :goto_2
.end method
