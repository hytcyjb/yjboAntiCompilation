.class public Lcom/zhihu/android/app/ui/activity/b;
.super Lcom/zhihu/android/app/ui/fragment/o;
.source "GuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/activity/b$c;,
        Lcom/zhihu/android/app/ui/activity/b$a;,
        Lcom/zhihu/android/app/ui/activity/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/zhihu/android/base/widget/ZHViewPager;

.field private b:Lcom/viewpagerindicator/CirclePageIndicator;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;-><init>()V

    return-void
.end method

.method private a(III)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040079

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 134
    const v0, 0x7f100199

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/ZHTextView;

    invoke-virtual {p0, p3}, Lcom/zhihu/android/app/ui/activity/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zhihu/android/base/widget/ZHTextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/zhihu/android/app/ui/activity/b$c;

    invoke-direct {v2, p0, p1, p2}, Lcom/zhihu/android/app/ui/activity/b$c;-><init>(Lcom/zhihu/android/app/ui/activity/b;II)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 140
    return-object v1
.end method

.method public static a()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/activity/b;

    const/4 v2, 0x0

    const-string v3, "guide"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/util/bb;->a(Z)V

    .line 56
    return-object v0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/activity/b;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/activity/b;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    const v0, 0x7f10013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/ZHViewPager;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->a:Lcom/zhihu/android/base/widget/ZHViewPager;

    .line 89
    const v0, 0x7f10013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->b:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 90
    const v0, 0x7f10013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->d:Landroid/widget/Button;

    .line 91
    const v0, 0x7f10013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->e:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 98
    new-instance v0, Lcom/zhihu/android/app/ui/activity/b$1;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/activity/b$1;-><init>(Lcom/zhihu/android/app/ui/activity/b;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->f:Landroid/os/Handler;

    .line 112
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->a:Lcom/zhihu/android/base/widget/ZHViewPager;

    new-instance v1, Lcom/zhihu/android/app/ui/activity/b$a;

    invoke-direct {v1}, Lcom/zhihu/android/app/ui/activity/b$a;-><init>()V

    invoke-virtual {v0, v4, v1}, Lcom/zhihu/android/base/widget/ZHViewPager;->a(ZLandroid/support/v4/view/ViewPager$g;)V

    .line 114
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->a:Lcom/zhihu/android/base/widget/ZHViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHViewPager;->setOffscreenPageLimit(I)V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->c:Ljava/util/ArrayList;

    .line 118
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const v2, 0x7f02018c

    const v3, 0x7f090160

    invoke-direct {p0, v1, v2, v3}, Lcom/zhihu/android/app/ui/activity/b;->a(III)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->c:Ljava/util/ArrayList;

    const v1, 0x7f02018d

    const v2, 0x7f090161

    invoke-direct {p0, v4, v1, v2}, Lcom/zhihu/android/app/ui/activity/b;->a(III)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->c:Ljava/util/ArrayList;

    const/4 v1, 0x2

    const v2, 0x7f02018e

    const v3, 0x7f090162

    invoke-direct {p0, v1, v2, v3}, Lcom/zhihu/android/app/ui/activity/b;->a(III)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Lcom/zhihu/android/app/ui/activity/b$b;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/b;->c:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/zhihu/android/app/ui/activity/b$b;-><init>(Lcom/zhihu/android/app/ui/activity/b;Ljava/util/List;)V

    .line 124
    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/b;->a:Lcom/zhihu/android/base/widget/ZHViewPager;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHViewPager;->setAdapter(Landroid/support/v4/view/ac;)V

    .line 126
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/b;->b:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/b;->a:Lcom/zhihu/android/base/widget/ZHViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 130
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/zhihu/android/app/ui/activity/b$2;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/activity/b$2;-><init>(Lcom/zhihu/android/app/ui/activity/b;)V

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/b;->a(Lcom/zhihu/android/app/ui/fragment/d$a;)V

    .line 153
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const v0, 0x7f04005c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/activity/b;->c(Landroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/b;->d()V

    .line 65
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/b;->e()V

    .line 66
    return-object v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/o;->c()V

    .line 232
    const-string v0, "Guide"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 159
    :pswitch_0
    invoke-static {v1, v1, v1}, Lcom/zhihu/android/app/ui/dialog/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/app/ui/dialog/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/b;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_register"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/j;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v1, v1, v1, v0}, Lcom/zhihu/android/app/ui/dialog/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/zhihu/android/app/ui/dialog/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/b;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_login"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/g;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x7f10013d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/o;->onHiddenChanged(Z)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->w()V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->v()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/o;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->v()V

    .line 73
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/b;->f()V

    .line 74
    return-void
.end method
