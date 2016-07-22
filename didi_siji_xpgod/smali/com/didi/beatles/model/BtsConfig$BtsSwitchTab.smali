.class public Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/model/BtsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BtsSwitchTab"
.end annotation


# instance fields
.field public cancel_button:Ljava/lang/String;

.field public confirm_button:Ljava/lang/String;

.field public is_open:I

.field private final mDefaultCancelBtn:Ljava/lang/String;

.field private final mDefaultConfirmBtn:Ljava/lang/String;

.field private final mDefaultText:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->is_open:I

    .line 318
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    const v1, 0x7f0b0118

    invoke-virtual {v0, v1}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->mDefaultConfirmBtn:Ljava/lang/String;

    .line 319
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    const v1, 0x7f0b0117

    invoke-virtual {v0, v1}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->mDefaultCancelBtn:Ljava/lang/String;

    .line 320
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    const v1, 0x7f0b0119

    invoke-virtual {v0, v1}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->mDefaultText:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->mDefaultConfirmBtn:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->confirm_button:Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->mDefaultCancelBtn:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->cancel_button:Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->mDefaultText:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->text:Ljava/lang/String;

    .line 324
    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 328
    const-string v0, "is_open"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->is_open:I

    .line 329
    const-string v0, "confirm_button"

    iget-object v1, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->mDefaultConfirmBtn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->confirm_button:Ljava/lang/String;

    .line 330
    const-string v0, "cancel_button"

    iget-object v1, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->mDefaultCancelBtn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->cancel_button:Ljava/lang/String;

    .line 331
    const-string v0, "text"

    iget-object v1, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->mDefaultText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->text:Ljava/lang/String;

    .line 332
    return-void
.end method
