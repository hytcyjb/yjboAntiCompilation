.class Lcn/sharesdk/framework/q;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/p;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/p;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/framework/q;->a:Lcn/sharesdk/framework/p;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/q;->a:Lcn/sharesdk/framework/p;

    invoke-virtual {v1}, Lcn/sharesdk/framework/p;->h()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/framework/q;->a:Lcn/sharesdk/framework/p;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/p;->a(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/framework/q;->a:Lcn/sharesdk/framework/p;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/p;->b(Ljava/util/HashMap;)Z

    :cond_0
    return-void
.end method
