.class Lcn/sharesdk/tencent/qzone/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/tencent/qzone/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/e;->b:Lcn/sharesdk/tencent/qzone/d;

    iput-object p2, p0, Lcn/sharesdk/tencent/qzone/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/e;->b:Lcn/sharesdk/tencent/qzone/d;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/d;->a(Ljava/lang/String;)V

    return-void
.end method
