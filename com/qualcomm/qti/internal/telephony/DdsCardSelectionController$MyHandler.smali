.class Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;
.super Landroid/os/Handler;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .param p2, "loop"    # Landroid/os/Looper;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .line 488
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 489
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 495
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_63a

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "not support this handle msg.what = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 705
    :cond_2c
    :goto_2c
    return-void

    .line 498
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;ILjava/lang/String;)V

    goto :goto_2c

    .line 501
    :pswitch_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleSimAbsentforSelectMultiMode(I)V

    goto :goto_2c

    .line 504
    :pswitch_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "oem EVENT_RADIO_NOT_AVAILABLE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 506
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v8, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 507
    .local v8, "phoneId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    move-result-object v16

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aget-object v16, v16, v17

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    goto :goto_2c

    .line 510
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "phoneId":Ljava/lang/Integer;
    :pswitch_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "oem EVENT_GET_ICC_STATUS_DONE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 511
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 512
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 513
    .local v7, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap13(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_2c

    .line 516
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "index":I
    :pswitch_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_2c

    .line 519
    :pswitch_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "oem EVENT_SET_GW_PERF_DONE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    const/16 v17, 0x12

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    .line 521
    .local v13, "response":Landroid/os/Message;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get9()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    .line 522
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 523
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    rsub-int/lit8 v17, v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleEX(Landroid/os/AsyncResult;I)V

    goto/16 :goto_2c

    .line 526
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "response":Landroid/os/Message;
    :pswitch_11c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 527
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 528
    .restart local v8    # "phoneId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v16

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aget-object v16, v16, v17

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x11

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    goto/16 :goto_2c

    .line 531
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "phoneId":Ljava/lang/Integer;
    :pswitch_14f
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 532
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v11, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/RadioCapability;

    .line 533
    .local v11, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_16d

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "get phone radio capability fail,no need to change RadioCapability"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 537
    :cond_16d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/RadioCapability;

    move-result-object v16

    invoke-virtual {v11}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v17

    aput-object v11, v16, v17

    goto/16 :goto_2c

    .line 542
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :pswitch_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_PRI_PERF_DONE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap11(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    .line 544
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 545
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleEX(Landroid/os/AsyncResult;I)V

    goto/16 :goto_2c

    .line 549
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_1af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_TEST_CARD_DETECT recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v16

    if-eqz v16, :cond_236

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get1()Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_236

    .line 552
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set1(Z)Z

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v16

    sget-object v17, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 554
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_66c

    const/16 v19, 0x2

    .line 553
    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v4

    .line 555
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set3(I)I

    .line 556
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_21f

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "switch Antenna failed, retry it"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 559
    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 560
    const-wide/16 v16, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2c

    .line 564
    :cond_21f
    const/16 v16, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 565
    const-wide/16 v16, 0x1f4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2c

    .line 570
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_236
    const/16 v16, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 571
    const-wide/16 v16, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2c

    .line 576
    :pswitch_24d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "EVENT_ANTENNA_SWITCH_RETRY recv  retry_times "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get12()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v16

    sget-object v17, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 578
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_672

    const/16 v19, 0x2

    .line 577
    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v4

    .line 579
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2c9

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get12()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2c9

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "retry switch Antenna failed, again retry"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 582
    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 583
    const-wide/16 v16, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 590
    :cond_2be
    :goto_2be
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get12()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set3(I)I

    goto/16 :goto_2c

    .line 585
    :cond_2c9
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get12()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2be

    .line 587
    const/16 v16, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 588
    const-wide/16 v16, 0x1f4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2be

    .line 593
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_2eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_GET_ANTENNA_POS recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v16

    sget-object v17, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 595
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_678

    const/16 v19, 0x2

    .line 594
    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v4

    .line 596
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_33d

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "retry switch Antenna failed, again retry"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 599
    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 600
    const-wide/16 v16, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2c

    .line 602
    :cond_33d
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2c

    .line 604
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 605
    .local v5, "buf":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "current antenna pos status is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget-byte v18, v5, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 606
    const/16 v16, 0x0

    aget-byte v16, v5, v16

    if-eqz v16, :cond_2c

    .line 608
    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 609
    const-wide/16 v16, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2c

    .line 615
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "buf":[B
    :pswitch_385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_SIM_STATUS_CHANGE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap15(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;I)V

    goto/16 :goto_2c

    .line 620
    :pswitch_3a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_MBN_ACTIVATED_DONE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap14(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_2c

    .line 625
    :pswitch_3b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_SIM_LOADED_DONE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 627
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v6

    .line 628
    .local v6, "dataSubId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get13(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v16

    if-eqz v16, :cond_454

    .line 629
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v14

    .line 630
    .local v14, "softsimSubId":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "EVENT_SIM_LOADED_DONE dataSubId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " mSoftsimPhoneId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " softsimSubId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v14, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 631
    const/16 v16, 0x0

    aget v16, v14, v16

    move/from16 v0, v16

    if-eq v0, v6, :cond_449

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)I

    move-result v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap12(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;I)V

    .line 644
    .end local v14    # "softsimSubId":[I
    :cond_449
    :goto_449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_2c

    .line 636
    :cond_454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v9

    .line 637
    .local v9, "primaryPhoneId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v10

    .line 638
    .local v10, "primarySubId":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "EVENT_SIM_LOADED_DONE dataSubId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " primaryPhoneId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " primarySubId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v10, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 639
    const/16 v16, 0x0

    aget v16, v10, v16

    move/from16 v0, v16

    if-eq v0, v6, :cond_449

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap12(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;I)V

    goto :goto_449

    .line 648
    .end local v6    # "dataSubId":I
    .end local v9    # "primaryPhoneId":I
    .end local v10    # "primarySubId":[I
    :pswitch_4b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "OEM_EVENT_TETHER_STATE_CHANGE receive"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 650
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;

    .line 651
    .local v15, "stateChange":Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;->active:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/util/ArrayList;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "OEM_EVENT_TETHER_STATE_CHANGE receive isWifiHotOpen = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_2c

    .line 658
    .end local v15    # "stateChange":Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;
    :pswitch_517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_PSENSOR_CHANGE receive"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_553

    const/16 v16, 0x1

    :goto_539
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mPSensorNegative:Z

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_2c

    .line 659
    :cond_553
    const/16 v16, 0x0

    goto :goto_539

    .line 665
    :pswitch_556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_PHONE_OBJECT_SWITCH receive"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap0(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v16

    if-nez v16, :cond_57a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap1(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v16

    if-eqz v16, :cond_2c

    .line 668
    :cond_57a
    const/16 v16, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 669
    const-wide/16 v16, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2c

    .line 674
    :pswitch_591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap16(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_2c

    .line 678
    :pswitch_59c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_RESET_DDS receive"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap0(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v16

    if-eqz v16, :cond_5b5

    .line 680
    return-void

    .line 681
    :cond_5b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_RESET_DDS handleTimeOut"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_2c

    .line 686
    :pswitch_5cc
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get9()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    goto/16 :goto_2c

    .line 689
    :pswitch_5e3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_620

    const/4 v12, 0x0

    .line 690
    .local v12, "reject_efs_sync":B
    :goto_5f2
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get0()Z

    move-result v16

    if-eqz v16, :cond_615

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v16

    sget-object v17, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_UPDATE_EFS_SYNC_FLAG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 693
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-byte v12, v18, v19

    const/16 v19, 0x1

    .line 692
    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    .line 695
    :cond_615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_2c

    .line 689
    .end local v12    # "reject_efs_sync":B
    :cond_620
    const/4 v12, 0x1

    .restart local v12    # "reject_efs_sync":B
    goto :goto_5f2

    .line 698
    .end local v12    # "reject_efs_sync":B
    :pswitch_622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_WAKE_LOCK_TIMEOUT receive"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_2c

    .line 495
    nop

    :pswitch_data_63a
    .packed-switch 0xa
        :pswitch_2d
        :pswitch_4b
        :pswitch_11c
        :pswitch_5b
        :pswitch_8a
        :pswitch_b9
        :pswitch_c4
        :pswitch_14f
        :pswitch_17f
        :pswitch_1af
        :pswitch_24d
        :pswitch_2eb
        :pswitch_385
        :pswitch_3a2
        :pswitch_3b9
        :pswitch_4b7
        :pswitch_556
        :pswitch_591
        :pswitch_59c
        :pswitch_5e3
        :pswitch_5cc
        :pswitch_517
        :pswitch_622
    .end packed-switch

    .line 554
    :array_66c
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 578
    nop

    :array_672
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 595
    nop

    :array_678
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method
