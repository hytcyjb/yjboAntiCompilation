.class public final Lct/ar$d;
.super Lct/as$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field private b:Ljava/util/ArrayList;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Lct/as$a;-><init>()V

    iput-object p1, p0, Lct/ar$d;->b:Ljava/util/ArrayList;

    iput p2, p0, Lct/ar$d;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "ParallelResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isDaemon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isDaemon()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lct/ar$d;->b:Ljava/util/ArrayList;

    iget v1, p0, Lct/ar$d;->c:I

    invoke-static {v0, v1}, Lct/ar;->a(Ljava/util/ArrayList;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lct/ar$d;->a:Ljava/net/Socket;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/ar$d;->d:Z

    return-void
.end method
