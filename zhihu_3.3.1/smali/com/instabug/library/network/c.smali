.class public final Lcom/instabug/library/network/c;
.super Ljava/lang/Object;
.source "WebServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/network/c$a;
    }
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Lcom/instabug/library/network/c$a;


# direct methods
.method public constructor <init>(Lcom/instabug/library/network/c$a;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/instabug/library/network/c;->b:Lcom/instabug/library/network/c$a;

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/instabug/library/network/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/instabug/library/network/c;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/network/c;->a:Lorg/json/JSONObject;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/network/c;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    return-object p0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.instabug.com/api/android/v1/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instabug/library/network/c;->b:Lcom/instabug/library/network/c$a;

    invoke-virtual {v1}, Lcom/instabug/library/network/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instabug/library/network/c;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/instabug/library/network/c;->a:Lorg/json/JSONObject;

    .line 76
    return-void
.end method
