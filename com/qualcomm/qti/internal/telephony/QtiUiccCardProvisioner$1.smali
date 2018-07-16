.class Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiUiccCardProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    .line 232
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 234
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->-wrap0(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 237
    const-string/jumbo v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "stateExtra":Ljava/lang/String;
    const-string/jumbo v3, "phone"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 239
    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "   sim_state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->-wrap0(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    .line 241
    const-string/jumbo v3, "IMSI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 240
    if-nez v3, :cond_74

    .line 242
    const-string/jumbo v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 240
    if-eqz v3, :cond_79

    .line 245
    :cond_74
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-static {v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->-wrap1(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;I)V

    .line 247
    :cond_79
    const-string/jumbo v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 248
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 256
    .end local v1    # "phoneId":I
    .end local v2    # "stateExtra":Ljava/lang/String;
    :cond_89
    :goto_89
    return-void

    .line 251
    :cond_8a
    const-string/jumbo v3, "com.android.phone.SIP_ADD_PHONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    const-string/jumbo v3, "com.android.phone.SIP_REMOVE_PHONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 252
    :cond_9c
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    const-string/jumbo v4, "onReceive SIP phone change updateUserPreferences"

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->-wrap0(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    goto :goto_89
.end method
