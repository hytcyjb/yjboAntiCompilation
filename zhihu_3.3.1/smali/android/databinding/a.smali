.class public Landroid/databinding/a;
.super Ljava/lang/Object;
.source "BaseObservable.java"

# interfaces
.implements Landroid/databinding/h;


# instance fields
.field private transient mCallbacks:Landroid/databinding/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized addOnPropertyChangedCallback(Landroid/databinding/h$a;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/databinding/a;->mCallbacks:Landroid/databinding/l;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/databinding/l;

    invoke-direct {v0}, Landroid/databinding/l;-><init>()V

    iput-object v0, p0, Landroid/databinding/a;->mCallbacks:Landroid/databinding/l;

    .line 34
    :cond_0
    iget-object v0, p0, Landroid/databinding/a;->mCallbacks:Landroid/databinding/l;

    invoke-virtual {v0, p1}, Landroid/databinding/l;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyChange()V
    .locals 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/databinding/a;->mCallbacks:Landroid/databinding/l;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/databinding/a;->mCallbacks:Landroid/databinding/l;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/l;->a(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyPropertyChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Landroid/databinding/a;->mCallbacks:Landroid/databinding/l;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Landroid/databinding/a;->mCallbacks:Landroid/databinding/l;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/databinding/l;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 64
    :cond_0
    return-void
.end method

.method public declared-synchronized removeOnPropertyChangedCallback(Landroid/databinding/h$a;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/databinding/a;->mCallbacks:Landroid/databinding/l;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Landroid/databinding/a;->mCallbacks:Landroid/databinding/l;

    invoke-virtual {v0, p1}, Landroid/databinding/l;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
