.class public Lcom/zhihu/android/api/model/HelpStatus;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "HelpStatus.java"


# instance fields
.field private mNotHelp:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_nothelp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public isNotHelp()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/HelpStatus;->mNotHelp:Z

    return v0
.end method
