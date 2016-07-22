.class public Lcom/xiaomi/smack/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/xiaomi/smack/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "wcc-ml-test10.bj"

    sput-object v0, Lcom/xiaomi/smack/l;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/xiaomi/smack/n;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/xiaomi/smack/j;->c:Z

    iput-boolean v0, p0, Lcom/xiaomi/smack/l;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smack/l;->f:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/smack/l;->a(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/n;)V

    return-void
.end method

.method private a(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/xiaomi/smack/n;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/smack/l;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/String;

    iput p2, p0, Lcom/xiaomi/smack/l;->d:I

    iput-object p3, p0, Lcom/xiaomi/smack/l;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/smack/l;->h:Lcom/xiaomi/smack/n;

    return-void
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/misc/a;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/smack/l;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/misc/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sandbox.xmpush.xiaomi.com"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/channel/commonutils/misc/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "10.237.12.17"

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/xiaomi/channel/commonutils/misc/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "58.68.235.106"

    goto :goto_0

    :cond_3
    const-string v0, "app.chat.xiaomi.net"

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/l;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smack/l;->e:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/l;->g:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/smack/l;->d:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smack/l;->e:Z

    return v0
.end method
