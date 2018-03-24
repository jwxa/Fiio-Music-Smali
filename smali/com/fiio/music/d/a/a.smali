.class public Lcom/fiio/music/d/a/a;
.super Lorg/fourthline/cling/support/contentdirectory/callback/Browse;
.source "ContentBrowseActionCallback.java"


# static fields
.field protected static final a:Ljava/lang/String;

.field private static b:Ljava/util/logging/Logger;


# instance fields
.field private c:Lorg/fourthline/cling/model/meta/Service;

.field private d:Lorg/fourthline/cling/support/model/container/Container;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/d/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/app/Activity;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dendy_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/fiio/music/d/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/d/a/a;->a:Ljava/lang/String;

    .line 57
    const-class v0, Lcom/fiio/music/d/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 56
    sput-object v0, Lcom/fiio/music/d/a/a;->b:Ljava/util/logging/Logger;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/container/Container;Ljava/util/ArrayList;Landroid/os/Handler;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lorg/fourthline/cling/model/meta/Service;",
            "Lorg/fourthline/cling/support/model/container/Container;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/d/a/c;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual/range {p3 .. p3}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/fourthline/cling/support/model/BrowseFlag;->DIRECT_CHILDREN:Lorg/fourthline/cling/support/model/BrowseFlag;

    const-string v7, "*"

    const-wide/16 v8, 0x0

    .line 72
    const/4 v10, 0x0

    const/4 v2, 0x1

    new-array v11, v2, [Lorg/fourthline/cling/support/model/SortCriterion;

    const/4 v2, 0x0

    new-instance v3, Lorg/fourthline/cling/support/model/SortCriterion;

    const/4 v4, 0x1

    const-string v12, "dc:title"

    invoke-direct {v3, v4, v12}, Lorg/fourthline/cling/support/model/SortCriterion;-><init>(ZLjava/lang/String;)V

    aput-object v3, v11, v2

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v3 .. v11}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;-><init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Lorg/fourthline/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/fourthline/cling/support/model/SortCriterion;)V

    .line 73
    iput-object p1, p0, Lcom/fiio/music/d/a/a;->f:Landroid/app/Activity;

    .line 74
    iput-object p2, p0, Lcom/fiio/music/d/a/a;->c:Lorg/fourthline/cling/model/meta/Service;

    .line 75
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/fiio/music/d/a/a;->d:Lorg/fourthline/cling/support/model/container/Container;

    .line 76
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/fiio/music/d/a/a;->e:Ljava/util/ArrayList;

    .line 77
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/fiio/music/d/a/a;->g:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/d/a/a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fiio/music/d/a/a;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/fiio/music/d/a/a;->b:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic a(Lcom/fiio/music/d/a/a;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fiio/music/d/a/a;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 190
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "audio/x-ms-wma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "audio/vnd.dlna.adts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :sswitch_2
    const-string v2, "audio/x-flac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :sswitch_3
    const-string v2, "audio/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :sswitch_4
    const-string v2, "audio/wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :sswitch_5
    const-string v2, "audio/aiff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :sswitch_6
    const-string v2, "audio/mpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7309cb4e -> :sswitch_0
        -0x5894ed86 -> :sswitch_1
        -0x3c11ec0a -> :sswitch_2
        0xb26c538 -> :sswitch_3
        0xb26e933 -> :sswitch_4
        0x59ac5981 -> :sswitch_5
        0x59b1e81e -> :sswitch_6
    .end sparse-switch
.end method

.method static synthetic b(Lcom/fiio/music/d/a/a;)Lorg/fourthline/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fiio/music/d/a/a;->c:Lorg/fourthline/cling/model/meta/Service;

    return-object v0
.end method

.method static synthetic c(Lcom/fiio/music/d/a/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fiio/music/d/a/a;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/DIDLContent;)V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/fiio/music/d/a/a;->b:Ljava/util/logging/Logger;

    const-string v1, "Received browse action DIDL descriptor, creating tree nodes"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/fiio/music/d/a/a;->f:Landroid/app/Activity;

    new-instance v1, Lcom/fiio/music/d/a/b;

    invoke-direct {v1, p0, p2, p1}, Lcom/fiio/music/d/a/b;-><init>(Lcom/fiio/music/d/a/a;Lorg/fourthline/cling/support/model/DIDLContent;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method
