.class final Lct/q$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Lct/aj;


# direct methods
.method constructor <init>(Lct/aj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lct/q$a;->a:Lct/aj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lct/q$a;->a:Lct/aj;

    invoke-static {v0}, Lct/i;->a(Lct/aj;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "B_ACSDK_SDK_Result"

    invoke-static {}, Lct/am;->k()Lct/am;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lct/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lct/am;->a(Landroid/content/Context;)V

    invoke-static {}, Lct/ap;->a()V

    :cond_0
    invoke-static {v1, v0}, Lct/ap;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
