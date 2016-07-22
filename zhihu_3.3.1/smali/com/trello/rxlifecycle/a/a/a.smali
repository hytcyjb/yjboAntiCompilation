.class public Lcom/trello/rxlifecycle/a/a/a;
.super Landroid/support/v4/app/Fragment;
.source "RxFragment.java"


# instance fields
.field private final a:Lrx/subjects/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/a",
            "<",
            "Lcom/trello/rxlifecycle/FragmentEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 16
    invoke-static {}, Lrx/subjects/a;->a()Lrx/subjects/a;

    move-result-object v0

    iput-object v0, p0, Lcom/trello/rxlifecycle/a/a/a;->a:Lrx/subjects/a;

    return-void
.end method


# virtual methods
.method public final b()Lrx/b$i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/b$i",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/trello/rxlifecycle/a/a/a;->a:Lrx/subjects/a;

    invoke-static {v0}, Lcom/trello/rxlifecycle/a;->a(Lrx/b;)Lrx/b$i;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 42
    iget-object v0, p0, Lcom/trello/rxlifecycle/a/a/a;->a:Lrx/subjects/a;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->ATTACH:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/a;->onNext(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/trello/rxlifecycle/a/a/a;->a:Lrx/subjects/a;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->CREATE:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/a;->onNext(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/trello/rxlifecycle/a/a/a;->a:Lrx/subjects/a;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->DESTROY:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/a;->onNext(Ljava/lang/Object;)V

    .line 90
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 91
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/trello/rxlifecycle/a/a/a;->a:Lrx/subjects/a;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->DESTROY_VIEW:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/a;->onNext(Ljava/lang/Object;)V

    .line 84
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 85
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/trello/rxlifecycle/a/a/a;->a:Lrx/subjects/a;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->DETACH:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/a;->onNext(Ljava/lang/Object;)V

    .line 96
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 97
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/trello/rxlifecycle/a/a/a;->a:Lrx/subjects/a;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->PAUSE:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/a;->onNext(Ljava/lang/Object;)V

    .line 72
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 73
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 66
    iget-object v0, p0, Lcom/trello/rxlifecycle/a/a/a;->a:Lrx/subjects/a;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->RESUME:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/a;->onNext(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 60
    iget-object v0, p0, Lcom/trello/rxlifecycle/a/a/a;->a:Lrx/subjects/a;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->START:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/a;->onNext(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/trello/rxlifecycle/a/a/a;->a:Lrx/subjects/a;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->STOP:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/a;->onNext(Ljava/lang/Object;)V

    .line 78
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 79
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    iget-object v0, p0, Lcom/trello/rxlifecycle/a/a/a;->a:Lrx/subjects/a;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->CREATE_VIEW:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/a;->onNext(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
