.class Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;
.super Ljava/lang/Object;
.source "AVRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParameterValuePair"
.end annotation


# instance fields
.field encodedParam:Ljava/lang/String;

.field param:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParameterValuePair(Ljava/lang/String;)Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;
    .locals 4
    .parameter

    .prologue
    .line 38
    new-instance v0, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;-><init>()V

    .line 39
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/avos/avoscloud/AVRequestParams;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;->encodedParam:Ljava/lang/String;

    .line 40
    iput-object p0, v0, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;->param:Ljava/lang/String;

    .line 41
    return-object v0
.end method

.method public static getParameterValuePair(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;-><init>()V

    .line 32
    iput-object p1, v0, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;->encodedParam:Ljava/lang/String;

    .line 33
    iput-object p0, v0, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;->param:Ljava/lang/String;

    .line 34
    return-object v0
.end method


# virtual methods
.method public getEncodedParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;->encodedParam:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;->param:Ljava/lang/String;

    return-object v0
.end method
