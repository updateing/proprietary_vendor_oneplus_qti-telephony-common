.class Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;
.super Lcom/qualcomm/qcrilhook/OemHookCallback;
.source "QtiRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DepersoCallback"
.end annotation


# instance fields
.field ERROR:I

.field SUCCESS:I

.field depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Lorg/codeaurora/internal/IDepersoResCallback;Landroid/os/Message;)V
    .registers 5
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .param p2, "callback"    # Lorg/codeaurora/internal/IDepersoResCallback;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 243
    invoke-direct {p0, p3}, Lcom/qualcomm/qcrilhook/OemHookCallback;-><init>(Landroid/os/Message;)V

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->SUCCESS:I

    .line 240
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->ERROR:I

    .line 244
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

    .line 245
    return-void
.end method


# virtual methods
.method public onOemHookException(I)V
    .registers 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string/jumbo v1, "DepersoResult ERROR"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap4(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->ERROR:I

    invoke-interface {v0, v1, p1}, Lorg/codeaurora/internal/IDepersoResCallback;->onDepersoResult(II)V

    .line 262
    return-void
.end method

.method public onOemHookResponse([BI)V
    .registers 5
    .param p1, "response"    # [B
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 249
    if-eqz p1, :cond_12

    .line 250
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string/jumbo v1, "DepersoResult SUCCESS"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap4(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->SUCCESS:I

    invoke-interface {v0, v1, p2}, Lorg/codeaurora/internal/IDepersoResCallback;->onDepersoResult(II)V

    .line 256
    :goto_11
    return-void

    .line 253
    :cond_12
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string/jumbo v1, "DepersoResult ERROR"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap4(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->ERROR:I

    invoke-interface {v0, v1, p2}, Lorg/codeaurora/internal/IDepersoResCallback;->onDepersoResult(II)V

    goto :goto_11
.end method
