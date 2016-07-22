.class public Lcom/zhihu/android/app/ui/activity/AgentActivity$a;
.super Ljava/lang/Object;
.source "AgentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/app/ui/activity/AgentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/content/Intent;


# direct methods
.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->a:I

    .line 80
    iput p2, p0, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->b:I

    .line 81
    iput-object p3, p0, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->c:Landroid/content/Intent;

    .line 82
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->b:I

    return v0
.end method

.method public c()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->c:Landroid/content/Intent;

    return-object v0
.end method
