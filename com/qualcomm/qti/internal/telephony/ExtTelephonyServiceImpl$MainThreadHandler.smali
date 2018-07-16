.class final Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;
.super Landroid/os/Handler;
.source "ExtTelephonyServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .param p2, "-this1"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 571
    const/4 v2, 0x0

    .line 572
    .local v2, "targetPhone":Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .line 574
    .local v0, "b":Landroid/os/Bundle;
    iget v3, p1, Landroid/os/Message;->what:I

    .line 576
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;

    .line 578
    .local v1, "request":Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;->result:Ljava/lang/Object;

    .line 579
    monitor-enter v1

    .line 580
    :try_start_10
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;->notifyAll()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_15

    monitor-exit v1

    .line 584
    return-void

    .line 579
    :catchall_15
    move-exception v3

    monitor-exit v1

    throw v3
.end method
