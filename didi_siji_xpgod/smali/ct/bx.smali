.class final Lct/bx;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/bx$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lct/bx$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lct/be;

.field c:J

.field d:J

.field e:J

.field f:J

.field volatile g:Z

.field final h:Lct/bw;


# direct methods
.method constructor <init>(Lct/be;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lct/bx;->b:Lct/be;

    .line 44
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lct/bx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 46
    invoke-virtual {p1}, Lct/be;->g()Lct/bw;

    move-result-object v0

    iput-object v0, p0, Lct/bx;->h:Lct/bw;

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lct/cc;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lct/bx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 66
    const-string v2, "TxRequestSender"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "postLocationRequest: size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lct/b$a;->b([B)[B

    move-result-object v2

    .line 70
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/tencent/tencentmap/lbssdk/service/e;->o([B)I

    move-result v0

    if-gez v0, :cond_2

    :cond_0
    invoke-static {p3, v1}, Lct/bn;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    new-instance v3, Lct/bx$a;

    invoke-direct {v3, v2, v0, p2}, Lct/bx$a;-><init>([BLjava/lang/String;Ljava/lang/Object;)V

    .line 74
    iput-object p1, v3, Lct/bx$a;->a:Ljava/lang/String;

    .line 78
    invoke-static {v3}, Lct/bx$a;->a(Lct/bx$a;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lct/bx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    :goto_1
    if-nez v0, :cond_1

    .line 82
    const-string v0, "TxRequestSender"

    const-string v1, "postLocationRequest: failed to add request"

    invoke-static {v0, v1}, Lct/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    return-void

    .line 70
    :cond_2
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lct/bn;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
