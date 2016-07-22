.class public Lcom/didi/common/ui/fragment/SlideFragment;
.super Landroid/support/v4/app/Fragment;
.source "SlideFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;,
        Lcom/didi/common/ui/fragment/SlideFragment$IFTransitionListener;
    }
.end annotation


# instance fields
.field asyncListener:Lcom/didi/async/task/AsyncListenrInter;

.field private isDestroyed:Z

.field protected mIsActive:Z

.field private mPaused:Z

.field protected mRootView:Landroid/view/ViewGroup;

.field private mSlideInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTransListener:Lcom/didi/common/ui/fragment/SlideFragment$IFTransitionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/SlideFragment;->mIsActive:Z

    .line 162
    new-instance v0, Lcom/didi/common/ui/fragment/SlideFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/SlideFragment$3;-><init>(Lcom/didi/common/ui/fragment/SlideFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SlideFragment;->asyncListener:Lcom/didi/async/task/AsyncListenrInter;

    .line 203
    new-instance v0, Lcom/didi/common/ui/fragment/SlideFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/SlideFragment$4;-><init>(Lcom/didi/common/ui/fragment/SlideFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SlideFragment;->mSlideInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 248
    return-void
.end method


# virtual methods
.method public doInBack()V
    .locals 1

    .prologue
    .line 159
    const-string v0, "doInBackFather"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 241
    invoke-static {p1}, Lcom/didi/common/ui/component/UiHelper;->hide(Landroid/view/View;)V

    .line 242
    return-void
.end method

.method public invisible(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 245
    invoke-static {p1}, Lcom/didi/common/ui/component/UiHelper;->invisible(Landroid/view/View;)V

    .line 246
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/SlideFragment;->isDestroyed:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/SlideFragment;->mPaused:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SlideFragment;->mTransListener:Lcom/didi/common/ui/fragment/SlideFragment$IFTransitionListener;

    .line 49
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 2
    .parameter "transit"
    .parameter "enter"
    .parameter "nextAnim"

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, anim:Landroid/view/animation/Animation;
    const v1, 0x7f04001b

    if-eq p3, v1, :cond_0

    const v1, 0x7f040019

    if-ne p3, v1, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/didi/common/ui/fragment/SlideFragment;->mSlideInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    :cond_1
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 140
    .end local v0           #v:Landroid/view/View;
    :goto_0
    return-object v0

    .line 132
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    new-instance v1, Lcom/didi/common/ui/fragment/SlideFragment$1;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/SlideFragment$1;-><init>(Lcom/didi/common/ui/fragment/SlideFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/SlideFragment;->isDestroyed:Z

    .line 189
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 190
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SlideFragment;->mRootView:Landroid/view/ViewGroup;

    .line 200
    return-void
.end method

.method public onDetach()V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 90
    :try_start_0
    const-class v2, Landroid/support/v4/app/Fragment;

    const-string v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 91
    .local v0, childFragmentManager:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 92
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    return-void

    .line 94
    .end local v0           #childFragmentManager:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 96
    .end local v1           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 97
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/SlideFragment;->mPaused:Z

    .line 66
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 67
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/SlideFragment;->mPaused:Z

    .line 73
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/SlideFragment;->mIsActive:Z

    .line 55
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/SlideFragment;->mIsActive:Z

    .line 61
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 146
    invoke-static {p0, p1}, Lnet/tsz/afinal/FinalActivity;->initInjectedView(Ljava/lang/Object;Landroid/view/View;)V

    .line 147
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SlideFragment;->mRootView:Landroid/view/ViewGroup;

    .line 148
    new-instance v0, Lcom/didi/common/ui/fragment/SlideFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/SlideFragment$2;-><init>(Lcom/didi/common/ui/fragment/SlideFragment;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    return-void
.end method

.method public shouldBeAddedToBackStack()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public show(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 237
    invoke-static {p1}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 238
    return-void
.end method
