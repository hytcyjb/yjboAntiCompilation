.class public Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;
.super Landroid/support/v4/app/Fragment;
.source "SupportMapFragment.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->c:Z

    .line 36
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;
    .locals 1
    .parameter "mContex"

    .prologue
    .line 20
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;-><init>()V

    .line 21
    .local v0, instance:Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;
    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->initSosoMap(Landroid/content/Context;)V

    .line 22
    return-object v0
.end method

.method public static newInstance(Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;
    .locals 2
    .parameter "googlemapoptions"
    .parameter "mContex"

    .prologue
    .line 27
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;-><init>()V

    .line 28
    .local v1, supportmapfragment:Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->initSosoMap(Landroid/content/Context;)V

    .line 32
    return-object v1
.end method


# virtual methods
.method public final getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    return-object v0
.end method

.method public initSosoMap(Landroid/content/Context;)V
    .locals 1
    .parameter "mContex"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-direct {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    .line 42
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 54
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "layoutinflater"
    .parameter "viewgroup"
    .parameter "bundle"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->c:Z

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->setOnTop(Z)V

    .line 71
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->onDestroy()V

    .line 91
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 92
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->onDestroy()V

    .line 86
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 87
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "attributeset"
    .parameter "bundle"

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 108
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->onPause()V

    .line 81
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 82
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->onResume()V

    .line 76
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 77
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->onStart()V

    .line 97
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 98
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->b:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->onStop()V

    .line 103
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 104
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    return-void
.end method

.method public setOnTop(Z)V
    .locals 0
    .parameter "isOnTop"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/SupportMapFragment;->c:Z

    .line 120
    return-void
.end method
