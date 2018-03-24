.class final Lcom/audlabs/vipereffect/payment/a;
.super Ljava/lang/Object;
.source "PayMent.java"

# interfaces
.implements Lcom/audlabs/vipereffect/base/HttpRequest$CallBackString;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/payment/PayMent;

.field private final synthetic b:Z

.field private final synthetic c:Landroid/app/ProgressDialog;

.field private final synthetic d:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/payment/PayMent;ZLandroid/app/ProgressDialog;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/payment/a;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    iput-boolean p2, p0, Lcom/audlabs/vipereffect/payment/a;->b:Z

    iput-object p3, p0, Lcom/audlabs/vipereffect/payment/a;->c:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/audlabs/vipereffect/payment/a;->d:Landroid/content/SharedPreferences;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestComplete(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/audlabs/vipereffect/payment/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/a;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/a;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 94
    :cond_0
    if-nez p1, :cond_1

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v0, "ViPEREffect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "payment network result"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PayMent"

    invoke-static {}, Lcom/audlabs/vipereffect/payment/PayMent;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/audlabs/vipereffect/util/CyptoUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/a;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    invoke-static {v0, p1}, Lcom/audlabs/vipereffect/payment/PayMent;->access$0(Lcom/audlabs/vipereffect/payment/PayMent;Ljava/lang/String;)V

    goto :goto_0
.end method
