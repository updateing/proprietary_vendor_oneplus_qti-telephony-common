.class public Lcom/qualcomm/qti/internal/telephony/QtiRadioIndication;
.super Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication$Stub;
.source "QtiRadioIndication.java"


# static fields
.field static final QTI_RILJ_LOG_TAG:Ljava/lang/String; = "QtiRadioIndication"


# instance fields
.field mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .locals 0

    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication$Stub;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioIndication;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    return-void
.end method


# virtual methods
.method public qtiRadioIndication(I)V
    .locals 0

    return-void
.end method
