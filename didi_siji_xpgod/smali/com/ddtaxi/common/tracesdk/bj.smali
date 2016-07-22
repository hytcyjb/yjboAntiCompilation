.class Lcom/ddtaxi/common/tracesdk/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/common/tracesdk/a/d;


# instance fields
.field final synthetic a:Lcom/ddtaxi/common/tracesdk/bh;

.field private final synthetic b:Lcom/ddtaxi/common/tracesdk/bg;


# direct methods
.method constructor <init>(Lcom/ddtaxi/common/tracesdk/bh;Lcom/ddtaxi/common/tracesdk/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/bj;->a:Lcom/ddtaxi/common/tracesdk/bh;

    iput-object p2, p0, Lcom/ddtaxi/common/tracesdk/bj;->b:Lcom/ddtaxi/common/tracesdk/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bj;->b:Lcom/ddtaxi/common/tracesdk/bg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errcode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ddtaxi/common/tracesdk/bg;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bj;->b:Lcom/ddtaxi/common/tracesdk/bg;

    if-eqz v1, :cond_0

    const-string v1, "errno"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bj;->b:Lcom/ddtaxi/common/tracesdk/bg;

    invoke-interface {v0}, Lcom/ddtaxi/common/tracesdk/bg;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bj;->b:Lcom/ddtaxi/common/tracesdk/bg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "status error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ddtaxi/common/tracesdk/bg;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bj;->b:Lcom/ddtaxi/common/tracesdk/bg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception parse json:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ddtaxi/common/tracesdk/bg;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
