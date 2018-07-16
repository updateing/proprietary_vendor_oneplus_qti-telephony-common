.class public Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;
.super Lcom/qualcomm/qcrilhook/OemHookCallback;
.source "QtiRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AdnOemHookCallback"
.end annotation


# instance fields
.field mAppMessage:Landroid/os/Message;

.field mRspLength:I

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Landroid/os/Message;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "length"    # I

    .prologue
    .line 394
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 395
    invoke-direct {p0, p2}, Lcom/qualcomm/qcrilhook/OemHookCallback;-><init>(Landroid/os/Message;)V

    .line 396
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;->mAppMessage:Landroid/os/Message;

    .line 397
    iput p3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;->mRspLength:I

    .line 398
    return-void
.end method


# virtual methods
.method public onOemHookException(I)V
    .registers 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string/jumbo v1, "AdnOemHookCallback: onOemHookException"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap4(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;->mAppMessage:Landroid/os/Message;

    .line 419
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "com.android.internal.telephony.CommandException: MODEM_ERR"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 418
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 420
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;->mAppMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 421
    return-void
.end method

.method public onOemHookResponse([BI)V
    .registers 8
    .param p1, "response"    # [B
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 402
    if-eqz p1, :cond_33

    .line 403
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AdnOemHookCallback: onOemHookResponse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap4(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;->mRspLength:I

    invoke-static {v1, p1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap0(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;[BI)[I

    move-result-object v0

    .line 406
    .local v0, "values":[I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;->mAppMessage:Landroid/os/Message;

    invoke-static {v1, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 411
    .end local v0    # "values":[I
    :goto_2d
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;->mAppMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 412
    return-void

    .line 408
    :cond_33
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;->mAppMessage:Landroid/os/Message;

    .line 409
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "QCRIL_EVT_HOOK_GET_ADN_RECORD failed"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_2d
.end method
