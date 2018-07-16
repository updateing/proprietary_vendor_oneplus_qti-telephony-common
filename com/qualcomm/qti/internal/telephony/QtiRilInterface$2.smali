.class Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;
.super Landroid/content/BroadcastReceiver;
.source "QtiRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 678
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 681
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap4(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 683
    const-string/jumbo v3, "phone"

    .line 684
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 683
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 686
    .local v2, "phoneId":I
    const-string/jumbo v3, "qualcomm.intent.action.ACTION_ADN_INIT_DONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 688
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v6, v3, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 691
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-get1(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 702
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4c
    :goto_4c
    return-void

    .line 693
    :cond_4d
    const-string/jumbo v3, "qualcomm.intent.action.ACTION_ADN_RECORDS_IND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 694
    const-string/jumbo v3, "adn_records"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 697
    .local v1, "data":[B
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v3, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap1(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;[BI)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v6, v3, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 700
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-get2(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_4c
.end method
