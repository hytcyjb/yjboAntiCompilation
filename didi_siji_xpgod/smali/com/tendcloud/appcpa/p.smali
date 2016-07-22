.class public Lcom/tendcloud/appcpa/p;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/tendcloud/appcpa/o;

.field static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "utf-8"

    sput-object v0, Lcom/tendcloud/appcpa/p;->b:Ljava/lang/String;

    new-instance v0, Lcom/tendcloud/appcpa/o;

    sget-object v1, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->sContext:Landroid/content/Context;

    const-string v2, "tdappcpa"

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/appcpa/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/appcpa/p;->a:Lcom/tendcloud/appcpa/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lcom/tendcloud/appcpa/p;->a:Lcom/tendcloud/appcpa/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tendcloud/appcpa/o;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget-object v3, Lcom/tendcloud/appcpa/p;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/tendcloud/appcpa/p;->a:Lcom/tendcloud/appcpa/o;

    sget-object v1, Lcom/tendcloud/appcpa/p;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/appcpa/o;->a([B)V

    sget-object v0, Lcom/tendcloud/appcpa/p;->a:Lcom/tendcloud/appcpa/o;

    invoke-virtual {v0}, Lcom/tendcloud/appcpa/o;->b()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/appcpa/p;->a:Lcom/tendcloud/appcpa/o;

    invoke-virtual {v0}, Lcom/tendcloud/appcpa/o;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
