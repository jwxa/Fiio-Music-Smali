.class final Lcom/audlabs/vipereffect/screen/m;
.super Ljava/lang/Object;
.source "DSPScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/DSPScreenActivity;

.field private final synthetic b:Landroid/content/SharedPreferences;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/DSPScreenActivity;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/m;->a:Lcom/audlabs/vipereffect/screen/DSPScreenActivity;

    iput-object p2, p0, Lcom/audlabs/vipereffect/screen/m;->b:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/audlabs/vipereffect/screen/m;->c:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/m;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/m;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/m;->a:Lcom/audlabs/vipereffect/screen/DSPScreenActivity;

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->mEnable:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/m;->a:Lcom/audlabs/vipereffect/screen/DSPScreenActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.audlabs.viperfx.updatemainui"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/m;->a:Lcom/audlabs/vipereffect/screen/DSPScreenActivity;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/m;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/m;->a:Lcom/audlabs/vipereffect/screen/DSPScreenActivity;

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->mEnable:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->access$0(Lcom/audlabs/vipereffect/screen/DSPScreenActivity;Ljava/lang/String;Z)V

    .line 52
    return-void
.end method
