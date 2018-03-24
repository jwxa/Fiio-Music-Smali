.class public Lcom/fiio/music/widget/MediaAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MediaAppWidgetProvider.java"


# static fields
.field private static b:Lcom/fiio/music/widget/MediaAppWidgetProvider;

.field private static final e:[I


# instance fields
.field protected a:Lcom/b/a/b/f;

.field private c:Lcom/b/a/b/d;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fiio/music/widget/MediaAppWidgetProvider;->e:[I

    .line 93
    return-void

    .line 89
    nop

    :array_0
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
    const v1, 0x7f0201c6

    const/4 v2, 0x1

    .line 52
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 56
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/MediaAppWidgetProvider;->a:Lcom/b/a/b/f;

    .line 60
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 61
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/MediaAppWidgetProvider;->c:Lcom/b/a/b/d;

    .line 71
    iput-boolean v2, p0, Lcom/fiio/music/widget/MediaAppWidgetProvider;->d:Z

    .line 52
    return-void
.end method

.method public static declared-synchronized a()Lcom/fiio/music/widget/MediaAppWidgetProvider;
    .locals 3

    .prologue
    .line 74
    const-class v1, Lcom/fiio/music/widget/MediaAppWidgetProvider;

    monitor-enter v1

    :try_start_0
    const-string v0, "fiio.start.viper_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const-string v0, "fiio.start.viper_sound"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    sget-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/audlabs/vipereffect/ViPEREffect;->setViPERPInit(Landroid/content/Context;)V

    .line 82
    sget-object v0, Lcom/fiio/music/widget/MediaAppWidgetProvider;->b:Lcom/fiio/music/widget/MediaAppWidgetProvider;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Lcom/fiio/music/widget/MediaAppWidgetProvider;

    invoke-direct {v0}, Lcom/fiio/music/widget/MediaAppWidgetProvider;-><init>()V

    sput-object v0, Lcom/fiio/music/widget/MediaAppWidgetProvider;->b:Lcom/fiio/music/widget/MediaAppWidgetProvider;

    .line 86
    :cond_1
    sget-object v0, Lcom/fiio/music/widget/MediaAppWidgetProvider;->b:Lcom/fiio/music/widget/MediaAppWidgetProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 9

    .prologue
    const v8, 0x7f0b039c

    const/4 v7, 0x4

    const/high16 v6, 0x8000000

    const/4 v5, 0x0

    .line 279
    const-string v0, "changestyle"

    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 280
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/fiio/music/service/MediaPlayerService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    if-eqz p2, :cond_0

    .line 283
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    const-string v3, "changeStyleboolean"

    const-string v4, "styleChange"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    invoke-static {p0, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 287
    invoke-virtual {p1, v8, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 298
    :goto_0
    new-instance v0, Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.fiio.music.service.meidaplayer"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    const-string v3, "flag"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 298
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 299
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 300
    invoke-static {p0, v5, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 301
    const v1, 0x7f0b0397

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 304
    const/4 v0, 0x5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.fiio.music.service.meidaplayer"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    const-string v2, "flag"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 304
    invoke-static {p0, v0, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 306
    const v1, 0x7f0b0396

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 308
    const/4 v0, 0x6

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.fiio.music.service.meidaplayer"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    const-string v2, "flag"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 308
    invoke-static {p0, v0, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 310
    const v1, 0x7f0b0399

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.service.meidaplayer"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    const-string v1, "flag"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 312
    invoke-static {p0, v7, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 315
    const v1, 0x7f0b0395

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 318
    return-void

    .line 290
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    const-string v3, "changeStyleboolean"

    const-string v4, "styleChange"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    invoke-static {p0, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 294
    invoke-virtual {p1, v8, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 3

    .prologue
    .line 126
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 127
    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 3

    .prologue
    .line 148
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fiio/music/widget/MediaAppWidgetProvider;->a(Lcom/fiio/music/service/MediaPlayerService;[I)V

    .line 154
    :cond_0
    return-void

    .line 148
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/fiio/music/service/MediaPlayerService;[I)V
    .locals 13

    .prologue
    const v9, 0x7f0b039d

    const v12, 0x7f0b0397

    const v8, 0x7f0b039e

    const/4 v11, 0x0

    const v7, 0x7f0c00e5

    .line 161
    invoke-virtual {p1}, Lcom/fiio/music/service/MediaPlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 162
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/fiio/music/service/MediaPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f040193

    invoke-direct {v2, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 164
    invoke-virtual {p1}, Lcom/fiio/music/service/MediaPlayerService;->n()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {p1}, Lcom/fiio/music/service/MediaPlayerService;->p()Ljava/lang/String;

    move-result-object v4

    .line 166
    const/4 v0, 0x0

    .line 169
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 170
    const-string v6, "shared"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 171
    const-string v6, "unmounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 172
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 187
    :cond_1
    :goto_0
    if-eqz v0, :cond_8

    .line 189
    invoke-virtual {v2, v8, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v2, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/example/root/checkappmusic/FiioMediaPlayer;)I

    move-result v1

    .line 202
    invoke-virtual {p1}, Lcom/fiio/music/service/MediaPlayerService;->q()I

    move-result v3

    .line 203
    invoke-virtual {p1}, Lcom/fiio/music/service/MediaPlayerService;->o()Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Lcom/fiio/music/service/MediaPlayerService;->w()I

    move-result v4

    .line 207
    invoke-virtual {p1}, Lcom/fiio/music/service/MediaPlayerService;->s()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    .line 208
    invoke-virtual {p1}, Lcom/fiio/music/service/MediaPlayerService;->t()I

    move-result v6

    .line 209
    invoke-virtual {p1}, Lcom/fiio/music/service/MediaPlayerService;->u()I

    move-result v7

    .line 219
    invoke-static {}, Lcom/fiio/music/util/h;->b()Z

    move-result v8

    iget-object v9, p0, Lcom/fiio/music/widget/MediaAppWidgetProvider;->a:Lcom/b/a/b/f;

    invoke-static {v0, v8, v9}, Lcom/fiio/music/util/h;->a(Ljava/lang/String;ZLcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v8, Lcom/b/a/b/a/f;

    const/16 v9, 0x1af

    const/16 v10, 0x190

    invoke-direct {v8, v9, v10}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 221
    iget-object v9, p0, Lcom/fiio/music/widget/MediaAppWidgetProvider;->a:Lcom/b/a/b/f;

    iget-object v10, p0, Lcom/fiio/music/widget/MediaAppWidgetProvider;->c:Lcom/b/a/b/d;

    invoke-virtual {v9, v0, v8, v10}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    if-nez v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/fiio/music/widget/MediaAppWidgetProvider;->a:Lcom/b/a/b/f;

    const-string v8, "drawable://2130838451"

    iget-object v9, p0, Lcom/fiio/music/widget/MediaAppWidgetProvider;->c:Lcom/b/a/b/d;

    invoke-virtual {v0, v8, v9}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "kHz|"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "bits|"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "kbps"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {v3}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 233
    const v6, 0x7f0b039c

    invoke-virtual {v2, v6, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 236
    const v0, 0x7f0b0395

    sget-object v6, Lcom/fiio/music/widget/MediaAppWidgetProvider;->e:[I

    aget v4, v6, v4

    invoke-virtual {v2, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 241
    const v0, 0x7f0b039f

    invoke-virtual {v2, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 247
    const v0, 0x7f0b039a

    invoke-virtual {v2, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 248
    const v0, 0x7f0b039b

    invoke-virtual {v2, v0, v1, v3, v11}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 251
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->L()Z

    move-result v0

    .line 252
    if-eqz v0, :cond_9

    .line 253
    const v1, 0x7f020538

    invoke-virtual {v2, v12, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 259
    :goto_2
    iget-boolean v1, p0, Lcom/fiio/music/widget/MediaAppWidgetProvider;->d:Z

    if-eqz v1, :cond_3

    .line 260
    iput-boolean v11, p0, Lcom/fiio/music/widget/MediaAppWidgetProvider;->d:Z

    .line 261
    invoke-static {p1, v2, v0}, Lcom/fiio/music/widget/MediaAppWidgetProvider;->a(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 265
    :cond_3
    invoke-direct {p0, p1, p2, v2}, Lcom/fiio/music/widget/MediaAppWidgetProvider;->a(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 266
    return-void

    .line 175
    :cond_4
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    :cond_5
    const-string v6, "removed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 178
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 181
    :cond_6
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 183
    :cond_7
    if-nez v3, :cond_1

    .line 184
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 194
    :cond_8
    invoke-virtual {v2, v8, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 195
    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v2, v9, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 255
    :cond_9
    const v1, 0x7f020539

    invoke-virtual {v2, v12, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040193

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v2, 0x7f0b039e

    const v3, 0x7f0c00e4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0b039d

    const v3, 0x7f0c00e5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Lcom/fiio/music/widget/MediaAppWidgetProvider;->a(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    invoke-direct {p0, p1, p3, v1}, Lcom/fiio/music/widget/MediaAppWidgetProvider;->a(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.player.action.SET_PLAY_SERVICE_OPT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v1, "flag"

    const-string v2, "updateWidget"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    return-void
.end method
