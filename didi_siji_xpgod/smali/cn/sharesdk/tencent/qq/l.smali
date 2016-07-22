.class Lcn/sharesdk/tencent/qq/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qq/k;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/k;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/qq/l;->a:Lcn/sharesdk/tencent/qq/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcn/sharesdk/tencent/qq/m;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qq/m;-><init>(Lcn/sharesdk/tencent/qq/l;)V

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/m;->start()V

    return-void
.end method
