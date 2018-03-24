.class final Lcom/fiio/music/activity/ay;
.super Ljava/lang/Object;
.source "ListMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ax;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/fiio/music/c/b;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ax;Landroid/widget/EditText;Ljava/lang/String;Lcom/fiio/music/c/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ay;->a:Lcom/fiio/music/activity/ax;

    iput-object p2, p0, Lcom/fiio/music/activity/ay;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/fiio/music/activity/ay;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/fiio/music/activity/ay;->d:Lcom/fiio/music/c/b;

    .line 1402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1405
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1406
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1407
    iget-object v0, p0, Lcom/fiio/music/activity/ay;->a:Lcom/fiio/music/activity/ax;

    invoke-static {v0}, Lcom/fiio/music/activity/ax;->a(Lcom/fiio/music/activity/ax;)Lcom/fiio/music/activity/ListMainActivity;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1408
    iget-object v1, p0, Lcom/fiio/music/activity/ay;->a:Lcom/fiio/music/activity/ax;

    invoke-static {v1}, Lcom/fiio/music/activity/ax;->a(Lcom/fiio/music/activity/ax;)Lcom/fiio/music/activity/ListMainActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/fiio/music/activity/ay;->a:Lcom/fiio/music/activity/ax;

    invoke-static {v3}, Lcom/fiio/music/activity/ax;->a(Lcom/fiio/music/activity/ax;)Lcom/fiio/music/activity/ListMainActivity;

    move-result-object v3

    const-class v4, Lcom/fiio/music/recevier/AutoShutdownRecevier;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x8000000

    invoke-static {v1, v6, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1409
    iget-object v2, p0, Lcom/fiio/music/activity/ay;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1412
    iget-object v3, p0, Lcom/fiio/music/activity/ay;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1413
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1416
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1417
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1418
    if-eqz v2, :cond_1

    .line 1419
    iget-object v3, p0, Lcom/fiio/music/activity/ay;->d:Lcom/fiio/music/c/b;

    const-string v4, "sleep"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1422
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/ay;->a:Lcom/fiio/music/activity/ax;

    invoke-static {v0}, Lcom/fiio/music/activity/ax;->a(Lcom/fiio/music/activity/ax;)Lcom/fiio/music/activity/ListMainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ay;->a:Lcom/fiio/music/activity/ax;

    invoke-static {v1}, Lcom/fiio/music/activity/ax;->a(Lcom/fiio/music/activity/ax;)Lcom/fiio/music/activity/ListMainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$49(Lcom/fiio/music/activity/ListMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ay;->a:Lcom/fiio/music/activity/ax;

    invoke-static {v2}, Lcom/fiio/music/activity/ax;->a(Lcom/fiio/music/activity/ax;)Lcom/fiio/music/activity/ListMainActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FiiO\u97f3\u4e50\u5c06\u5728"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/activity/ay;->b:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5206\u949f\u4e4b\u540e\u81ea\u52a8\u5173\u95ed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$50(Lcom/fiio/music/activity/ListMainActivity;Landroid/widget/Toast;)V

    .line 1429
    :goto_0
    return-void

    .line 1427
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/ay;->d:Lcom/fiio/music/c/b;

    const-string v1, "sleep"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
