.class public Lcom/didi/common/model/CommonAccount;
.super Lcom/didi/common/model/BaseObject;
.source "CommonAccount.java"


# instance fields
.field public balance:Ljava/lang/String;

.field public defaultButton:Ljava/lang/String;

.field public defaultManualUrl:Ljava/lang/String;

.field public defaultText:Ljava/lang/String;

.field public userManualUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/common/model/CommonAccount;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public getBalanceFloat()F
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/didi/common/model/CommonAccount;->balance:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 54
    .local v0, balanceFloat:F
    :try_start_0
    iget-object v1, p0, Lcom/didi/common/model/CommonAccount;->balance:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "obj"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 26
    const-string v4, "acountinfo"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    :goto_0
    return-void

    .line 28
    :cond_0
    const-string v4, "acountinfo"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 30
    const-string v4, "balance"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, balanceStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 33
    .local v2, balanceInt:I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 37
    :goto_1
    int-to-double v4, v2

    const-wide/high16 v6, 0x4059

    div-double v0, v4, v6

    .line 38
    .local v0, balanceDbl:D
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/common/model/CommonAccount;->balance:Ljava/lang/String;

    .line 39
    const-string v4, "usermanualurl"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/common/model/CommonAccount;->userManualUrl:Ljava/lang/String;

    .line 40
    const-string v4, "defaulttext"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/common/model/CommonAccount;->defaultText:Ljava/lang/String;

    .line 41
    const-string v4, "defaultbutton"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/common/model/CommonAccount;->defaultButton:Ljava/lang/String;

    .line 42
    const-string v4, "defaultmanualurl"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/common/model/CommonAccount;->defaultManualUrl:Ljava/lang/String;

    goto :goto_0

    .line 34
    .end local v0           #balanceDbl:D
    :catch_0
    move-exception v4

    goto :goto_1
.end method
