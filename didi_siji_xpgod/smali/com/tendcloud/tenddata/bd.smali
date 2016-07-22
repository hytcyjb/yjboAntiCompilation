.class Lcom/tendcloud/tenddata/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/tendcloud/tenddata/o;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/o;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/bd;->b:Lcom/tendcloud/tenddata/o;

    iput-object p2, p0, Lcom/tendcloud/tenddata/bd;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/o;->w()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tendcloud/tenddata/o;->x()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/bd;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/o;->a(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
