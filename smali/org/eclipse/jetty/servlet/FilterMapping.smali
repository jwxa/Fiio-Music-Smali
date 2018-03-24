.class public Lorg/eclipse/jetty/servlet/FilterMapping;
.super Ljava/lang/Object;
.source "FilterMapping.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# static fields
.field public static final ALL:I = 0x1f

.field public static final ASYNC:I = 0x10

.field public static final DEFAULT:I = 0x0

.field public static final ERROR:I = 0x8

.field public static final FORWARD:I = 0x2

.field public static final INCLUDE:I = 0x4

.field public static final REQUEST:I = 0x1


# instance fields
.field private _dispatches:I

.field private _filterName:Ljava/lang/String;

.field private transient _holder:Lorg/eclipse/jetty/servlet/FilterHolder;

.field private _pathSpecs:[Ljava/lang/String;

.field private _servletNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 96
    return-void
.end method

.method public static dispatch(Lc/c/d;)I
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lorg/eclipse/jetty/servlet/c;->a:[I

    invoke-virtual {p0}, Lc/c/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lc/c/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 72
    :pswitch_1
    const/16 v0, 0x10

    goto :goto_0

    .line 74
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 76
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 78
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static dispatch(Ljava/lang/String;)Lc/c/d;
    .locals 1

    .prologue
    .line 49
    const-string v0, "request"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lc/c/d;->c:Lc/c/d;

    .line 58
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-string v0, "forward"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    sget-object v0, Lc/c/d;->a:Lc/c/d;

    goto :goto_0

    .line 53
    :cond_1
    const-string v0, "include"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    sget-object v0, Lc/c/d;->b:Lc/c/d;

    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "error"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    sget-object v0, Lc/c/d;->e:Lc/c/d;

    goto :goto_0

    .line 57
    :cond_3
    const-string v0, "async"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    sget-object v0, Lc/c/d;->d:Lc/c/d;

    goto :goto_0

    .line 59
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method appliesTo(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 124
    iget v2, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    if-nez v2, :cond_2

    .line 125
    if-eq p1, v1, :cond_0

    const/16 v2, 0x10

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_holder:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->isAsyncSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 126
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method appliesTo(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 108
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 109
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3, p1, v2}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 113
    :cond_0
    return v1

    .line 108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 268
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 269
    return-void
.end method

.method getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_holder:Lorg/eclipse/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method public getFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_filterName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathSpecs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    return-object v0
.end method

.method public getServletNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    return-object v0
.end method

.method public setDispatcherTypes(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lc/c/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 160
    if-eqz p1, :cond_4

    .line 162
    sget-object v0, Lc/c/d;->e:Lc/c/d;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 164
    :cond_0
    sget-object v0, Lc/c/d;->a:Lc/c/d;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 166
    :cond_1
    sget-object v0, Lc/c/d;->b:Lc/c/d;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 168
    :cond_2
    sget-object v0, Lc/c/d;->c:Lc/c/d;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 170
    :cond_3
    sget-object v0, Lc/c/d;->d:Lc/c/d;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 173
    :cond_4
    return-void
.end method

.method public setDispatches(I)V
    .locals 0

    .prologue
    .line 186
    iput p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 187
    return-void
.end method

.method setFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 1

    .prologue
    .line 204
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_holder:Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 205
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_filterName:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setPathSpec(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setPathSpecs([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setServletName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 252
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setServletNames([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_filterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
