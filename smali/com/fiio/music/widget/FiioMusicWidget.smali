.class public Lcom/fiio/music/widget/FiioMusicWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "FiioMusicWidget.java"


# static fields
.field private static h:Ljava/util/Set;

.field private static final i:[I

.field private static final j:[I


# instance fields
.field protected a:Lcom/b/a/b/f;

.field private b:Lcom/b/a/b/d;

.field private c:Z

.field private final d:Landroid/content/Intent;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/fiio/music/widget/FiioMusicWidget;->h:Ljava/util/Set;

    .line 60
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fiio/music/widget/FiioMusicWidget;->i:[I

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/fiio/music/widget/FiioMusicWidget;->j:[I

    .line 76
    return-void

    .line 60
    nop

    :array_0
    .array-data 4
        0x7f020646
        0x7f020645
        0x7f020644
        0x7f0204e7
        0x7f0204e8
        0x7f0204e9
        0x7f0204ea
        0x7f0204eb
    .end array-data

    .line 71
    :array_1
    .array-data 4
        0x7f0204bf
        0x7f020651
        0x7f020653
        0x7f020652
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const v1, 0x7f0201c6

    .line 30
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 33
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 34
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->b:Lcom/b/a/b/d;

    .line 42
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->a:Lcom/b/a/b/f;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.EXAMPLE_APP_WIDGET_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->d:Landroid/content/Intent;

    .line 48
    const-string v0, "com.fiio.music.widget.UPDATE_ALL"

    iput-object v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->e:Ljava/lang/String;

    .line 49
    const-string v0, "android.appwidget.action.APPWIDGET_ENABLED"

    iput-object v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->f:Ljava/lang/String;

    .line 50
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    iput-object v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->g:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private static a(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 423
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 424
    const-class v1, Lcom/fiio/music/widget/FiioMusicWidget;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 425
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "custom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 427
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 428
    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v0, :cond_1

    .line 434
    sget-object v0, Lcom/fiio/music/widget/FiioMusicWidget;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 436
    sget-object v1, Lcom/fiio/music/widget/FiioMusicWidget;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 437
    iget-boolean v2, p0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v2, :cond_0

    const-string v2, "xyz-FiioMusicWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "total:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 442
    :cond_1
    return-void

    .line 439
    :cond_2
    iget-boolean v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v0, :cond_0

    const-string v2, "xyz-FiioMusicWidget"

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " -- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Set;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 221
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 222
    const-string v0, "playMode"

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 223
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    return-void

    .line 224
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 226
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040193

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 227
    const v4, 0x7f0b0395

    sget-object v5, Lcom/fiio/music/widget/FiioMusicWidget;->j:[I

    aget v5, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 229
    invoke-virtual {p1, v0, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Set;Landroid/content/Intent;)V
    .locals 21

    .prologue
    .line 237
    const-string v4, "changestyle"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 238
    const-string v4, "songName"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 239
    const-string v4, "songArtist"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 240
    const-string v4, "songDuration"

    const/4 v5, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 241
    const-string v4, "songCurTime"

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 242
    const-string v4, "albumPath"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    const-string v4, "songPath"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    const-string v5, "playMode"

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 245
    const-string v5, "playState"

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 246
    const-string v5, "sampleRate"

    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 247
    const-string v5, "bitRate"

    const/4 v14, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 248
    const-string v5, "encodeRate"

    const/4 v15, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 250
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v5, :cond_0

    const-string v5, "xyz-FiioMusicWidget"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "updateAllAppWidgets(): size="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    invoke-static {}, Lcom/fiio/music/util/h;->b()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fiio/music/widget/FiioMusicWidget;->a:Lcom/b/a/b/f;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/fiio/music/util/h;->a(Ljava/lang/String;ZLcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v4

    .line 259
    new-instance v5, Lcom/b/a/b/a/f;

    const/16 v16, 0x1af

    const/16 v17, 0x190

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fiio/music/widget/FiioMusicWidget;->a:Lcom/b/a/b/f;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fiio/music/widget/FiioMusicWidget;->b:Lcom/b/a/b/d;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v5, v1}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 261
    if-nez v4, :cond_6

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fiio/music/widget/FiioMusicWidget;->a:Lcom/b/a/b/f;

    const-string v5, "drawable://2130838451"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fiio/music/widget/FiioMusicWidget;->b:Lcom/b/a/b/d;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v5, v4

    .line 264
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    const-string v4, "xyz-FiioMusicWidget"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "bitmap.getByteCount()="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "kHz|"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "bits|"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "kbps"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-static {v10}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v13

    .line 272
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 274
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 332
    return-void

    .line 275
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 277
    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    sget-object v17, Lcom/fiio/music/widget/FiioMusicWidget;->i:[I

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Random;->nextInt(I)I

    .line 281
    new-instance v15, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f040193

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 284
    const v17, 0x7f0b039c

    move/from16 v0, v17

    invoke-virtual {v15, v0, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 287
    const v17, 0x7f0b0395

    sget-object v18, Lcom/fiio/music/widget/FiioMusicWidget;->j:[I

    aget v18, v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 288
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const-string v17, "xyz-FiioMusicWidget"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "updateAllAppWidgets(): songPlayState="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_3
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v12, v0, :cond_4

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v12, v0, :cond_5

    .line 290
    :cond_4
    const v17, 0x7f0b0398

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 291
    const v17, 0x7f0b0397

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 302
    :goto_2
    const v17, 0x7f0b0397

    .line 303
    const/16 v18, 0x7

    .line 302
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/fiio/music/widget/FiioMusicWidget;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 304
    const v17, 0x7f0b0398

    .line 305
    const/16 v18, 0x9

    .line 304
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/fiio/music/widget/FiioMusicWidget;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 306
    const v17, 0x7f0b0399

    .line 307
    const/16 v18, 0x6

    .line 306
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/fiio/music/widget/FiioMusicWidget;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 308
    const v17, 0x7f0b0396

    .line 309
    const/16 v18, 0x5

    .line 308
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/fiio/music/widget/FiioMusicWidget;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 310
    const v17, 0x7f0b0395

    .line 311
    const/16 v18, 0x4

    .line 310
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/fiio/music/widget/FiioMusicWidget;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 312
    new-instance v17, Landroid/content/Intent;

    const-class v18, Lcom/fiio/music/activity/ListMainActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    const-string v18, "changeStyleboolean"

    const-string v19, "styleChange"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    const/16 v18, 0x64

    .line 316
    const/high16 v19, 0x8000000

    .line 315
    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 317
    const v18, 0x7f0b039c

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 321
    const v17, 0x7f0b039f

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 323
    const v17, 0x7f0b039e

    move/from16 v0, v17

    invoke-virtual {v15, v0, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 325
    const v17, 0x7f0b039d

    move/from16 v0, v17

    invoke-virtual {v15, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 327
    const v17, 0x7f0b039a

    move/from16 v0, v17

    invoke-virtual {v15, v0, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 328
    const v17, 0x7f0b039b

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v9, v10, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 330
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v15}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 293
    :cond_5
    const v17, 0x7f0b0398

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 297
    const v17, 0x7f0b0397

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    :cond_6
    move-object v5, v4

    goto/16 :goto_0
.end method

.method private static c(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Set;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 337
    const-string v0, "songDuration"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 338
    const-string v0, "songCurTime"

    invoke-virtual {p3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 341
    invoke-static {v2}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 347
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    return-void

    .line 348
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 350
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    sget-object v6, Lcom/fiio/music/widget/FiioMusicWidget;->i:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    .line 354
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f040193

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 371
    const v6, 0x7f0b039a

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 372
    const v6, 0x7f0b039b

    invoke-virtual {v5, v6, v1, v2, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 374
    invoke-virtual {p1, v0, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 110
    const-string v0, "xyz-FiioMusicWidget"

    const-string v1, "onAppWidgetOptionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 113
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4

    .prologue
    .line 118
    const-string v0, "xyz-FiioMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeleted(): appWidgetIds.length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/fiio/music/widget/FiioMusicWidget;->a()V

    .line 126
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 127
    return-void

    .line 121
    :cond_0
    aget v2, p2, v0

    .line 122
    sget-object v3, Lcom/fiio/music/widget/FiioMusicWidget;->h:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 142
    const-string v0, "xyz-FiioMusicWidget"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 132
    const-string v0, "xyz-FiioMusicWidget"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v1, "com.fiio.music.widget.UPDATE_ALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    const-string v1, "xyz-FiioMusicWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnReceive:Action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    const-string v1, "com.fiio.music.widget.UPDATE_ALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    const-string v0, "updateFlag"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 161
    if-nez v0, :cond_2

    .line 162
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sget-object v1, Lcom/fiio/music/widget/FiioMusicWidget;->h:Ljava/util/Set;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/fiio/music/widget/FiioMusicWidget;->b(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Set;Landroid/content/Intent;)V

    .line 213
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 214
    return-void

    .line 163
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 164
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sget-object v1, Lcom/fiio/music/widget/FiioMusicWidget;->h:Ljava/util/Set;

    invoke-static {p1, v0, v1, p2}, Lcom/fiio/music/widget/FiioMusicWidget;->c(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Set;Landroid/content/Intent;)V

    goto :goto_0

    .line 165
    :cond_3
    if-ne v0, v6, :cond_1

    .line 166
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sget-object v1, Lcom/fiio/music/widget/FiioMusicWidget;->h:Ljava/util/Set;

    invoke-static {p1, v0, v1, p2}, Lcom/fiio/music/widget/FiioMusicWidget;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Set;Landroid/content/Intent;)V

    goto :goto_0

    .line 169
    :cond_4
    const-string v0, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 173
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 174
    const-string v2, "com.fiio.music.service.meidaplayer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    packed-switch v0, :pswitch_data_0

    .line 206
    :goto_1
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 177
    :pswitch_1
    iget-boolean v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v0, :cond_5

    const-string v0, "xyz-FiioMusicWidget"

    const-string v2, "Button wifi clicked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_5
    iget-boolean v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v0, :cond_6

    const-string v0, "play Button Clicked"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    :cond_6
    const-string v0, "flag"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 182
    :pswitch_2
    iget-boolean v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v0, :cond_7

    const-string v0, "xyz-FiioMusicWidget"

    const-string v2, "Button wifi clicked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_7
    iget-boolean v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v0, :cond_8

    const-string v0, "pause Button Clicked"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    :cond_8
    const-string v0, "flag"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 189
    :pswitch_3
    iget-boolean v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v0, :cond_9

    const-string v0, "xyz-FiioMusicWidget"

    const-string v2, "Button wifi clicked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_9
    iget-boolean v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v0, :cond_a

    const-string v0, "next Button Clicked"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    :cond_a
    const-string v0, "flag"

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 198
    :pswitch_4
    iget-boolean v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v0, :cond_b

    const-string v0, "xyz-FiioMusicWidget"

    const-string v2, "Button wifi clicked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_b
    iget-boolean v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v0, :cond_c

    const-string v0, "prev Button Clicked"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    :cond_c
    const-string v0, "flag"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 203
    :pswitch_5
    iget-boolean v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v0, :cond_d

    const-string v0, "xyz-FiioMusicWidget"

    const-string v2, "Button wifi clicked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_d
    iget-boolean v0, p0, Lcom/fiio/music/widget/FiioMusicWidget;->c:Z

    if-eqz v0, :cond_e

    const-string v0, "play mode Button Clicked"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    :cond_e
    const-string v0, "flag"

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 175
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    .prologue
    .line 82
    const-string v0, "xyz-FiioMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUpdate(): appWidgetIds.length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/fiio/music/widget/FiioMusicWidget;->a()V

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    const-string v1, "com.fiio.music.player.action.SET_PLAY_SERVICE_OPT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v1, "flag"

    const-string v2, "updateWidget"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    return-void

    .line 85
    :cond_0
    aget v2, p3, v0

    .line 86
    sget-object v3, Lcom/fiio/music/widget/FiioMusicWidget;->h:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
