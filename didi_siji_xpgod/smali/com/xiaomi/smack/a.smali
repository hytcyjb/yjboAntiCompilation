.class public Lcom/xiaomi/smack/a;
.super Lcom/xiaomi/smack/l;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/xiaomi/network/Fallback;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/xiaomi/network/Fallback;ILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/smack/n;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p3, p5, p6}, Lcom/xiaomi/smack/l;-><init>(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/n;)V

    iput-object v0, p0, Lcom/xiaomi/smack/a;->d:Lcom/xiaomi/network/Fallback;

    const-string v0, "mibind.chat.gslb.mi-idc.com"

    iput-object v0, p0, Lcom/xiaomi/smack/a;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/smack/a;->d:Lcom/xiaomi/network/Fallback;

    iput-boolean p1, p0, Lcom/xiaomi/smack/a;->b:Z

    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lcom/xiaomi/smack/a;->c:Ljava/lang/String;

    return-void

    :cond_0
    const-string p4, "/"

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/xiaomi/network/Fallback;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/a;->d:Lcom/xiaomi/network/Fallback;

    return-object v0
.end method

.method public a(Lcom/xiaomi/network/Fallback;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/smack/a;->d:Lcom/xiaomi/network/Fallback;

    const-string v0, "mibind.chat.gslb.mi-idc.com"

    iput-object v0, p0, Lcom/xiaomi/smack/a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/smack/a;->d:Lcom/xiaomi/network/Fallback;

    invoke-virtual {v0}, Lcom/xiaomi/network/Fallback;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/a;->d:Lcom/xiaomi/network/Fallback;

    invoke-virtual {v0}, Lcom/xiaomi/network/Fallback;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/net/URI;
    .locals 3

    const/16 v2, 0x2f

    iget-object v0, p0, Lcom/xiaomi/smack/a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smack/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->c:Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/xiaomi/smack/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "https://"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/smack/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/smack/a;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/smack/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v0, "http://"

    goto :goto_0
.end method
