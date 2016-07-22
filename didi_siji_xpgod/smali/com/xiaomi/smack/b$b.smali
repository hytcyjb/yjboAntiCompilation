.class Lcom/xiaomi/smack/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smack/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/smack/b;

.field private b:Lcom/xiaomi/smack/packet/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/smack/b;Lcom/xiaomi/smack/packet/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/b$b;->a:Lcom/xiaomi/smack/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/smack/b$b;->b:Lcom/xiaomi/smack/packet/d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smack/b$b;->a:Lcom/xiaomi/smack/b;

    iget-object v0, v0, Lcom/xiaomi/smack/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/j$a;

    iget-object v2, p0, Lcom/xiaomi/smack/b$b;->b:Lcom/xiaomi/smack/packet/d;

    invoke-virtual {v0, v2}, Lcom/xiaomi/smack/j$a;->a(Lcom/xiaomi/smack/packet/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method
