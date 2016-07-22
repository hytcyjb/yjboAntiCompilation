.class public final Lcom/alipay/sdk/authjs/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/authjs/a$1;,
        Lcom/alipay/sdk/authjs/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "CallInfo"

.field public static final b:Ljava/lang/String; = "call"

.field public static final c:Ljava/lang/String; = "callback"

.field public static final d:Ljava/lang/String; = "bundleName"

.field public static final e:Ljava/lang/String; = "clientId"

.field public static final f:Ljava/lang/String; = "param"

.field public static final g:Ljava/lang/String; = "func"

.field public static final h:Ljava/lang/String; = "msgType"


# instance fields
.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Lorg/json/JSONObject;

.field private n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/authjs/a;->n:Z

    iput-object p1, p0, Lcom/alipay/sdk/authjs/a;->l:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/alipay/sdk/authjs/a$a;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/alipay/sdk/authjs/a$1;->a:[I

    invoke-virtual {p0}, Lcom/alipay/sdk/authjs/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "none"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "function not found"

    goto :goto_0

    :pswitch_1
    const-string v0, "invalid parameter"

    goto :goto_0

    :pswitch_2
    const-string v0, "runtime error"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/authjs/a;->i:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/authjs/a;->m:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/sdk/authjs/a;->n:Z

    return-void
.end method

.method private a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/sdk/authjs/a;->n:Z

    return v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/authjs/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/authjs/a;->j:Ljava/lang/String;

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/authjs/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/authjs/a;->k:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/authjs/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/authjs/a;->l:Ljava/lang/String;

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/authjs/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method private f()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/authjs/a;->m:Lorg/json/JSONObject;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "clientId"

    iget-object v2, p0, Lcom/alipay/sdk/authjs/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "func"

    iget-object v2, p0, Lcom/alipay/sdk/authjs/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "param"

    iget-object v2, p0, Lcom/alipay/sdk/authjs/a;->m:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msgType"

    iget-object v2, p0, Lcom/alipay/sdk/authjs/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
