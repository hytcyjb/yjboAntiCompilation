.class Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CommonContactInviteAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public mAvatar:Lx/ImageView;

.field public mCheckBox:Landroid/widget/CheckBox;

.field public mContact:Lcom/didi/common/database/Contact;

.field public mName:Landroid/widget/TextView;

.field public mPhone:Landroid/widget/TextView;

.field public mPosition:I

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isChecked()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;

    #getter for: Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mToInviteSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->access$200(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mContact:Lcom/didi/common/database/Contact;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setInviteTextColor()V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;

    #getter for: Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mToInviteSet:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->access$200(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 159
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 160
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f07002f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setRightTextColor(I)V

    .line 165
    :goto_0
    return-void

    .line 162
    .end local v0           #titleBar:Lcom/didi/frame/titlebar/TitleBar;
    :cond_0
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 163
    .restart local v0       #titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f070021

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setRightTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public create(I)Landroid/view/View;
    .locals 3
    .parameter "position"

    .prologue
    .line 110
    iput p1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mPosition:I

    .line 111
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mView:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f08031f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f08031e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mAvatar:Lx/ImageView;

    .line 115
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f080320

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 116
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f080321

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mPhone:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->renderPhoto()V

    .line 120
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 121
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mContact:Lcom/didi/common/database/Contact;

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mContact:Lcom/didi/common/database/Contact;

    invoke-virtual {v0}, Lcom/didi/common/database/Contact;->getContactNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    if-eqz p2, :cond_1

    .line 151
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;

    #getter for: Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mToInviteSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->access$200(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mContact:Lcom/didi/common/database/Contact;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    :goto_1
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->setInviteTextColor()V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;

    #getter for: Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mToInviteSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->access$200(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mContact:Lcom/didi/common/database/Contact;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->toggleSelection()V

    .line 176
    return-void
.end method

.method public renderPhoto()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;-><init>(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;)V

    .line 106
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 107
    return-void
.end method

.method public toggleSelection()V
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 125
    iput p1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mPosition:I

    .line 126
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;

    #getter for: Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->access$100(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/database/Contact;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mContact:Lcom/didi/common/database/Contact;

    .line 127
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mContact:Lcom/didi/common/database/Contact;

    invoke-virtual {v1}, Lcom/didi/common/database/Contact;->getContactName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mContact:Lcom/didi/common/database/Contact;

    invoke-virtual {v1}, Lcom/didi/common/database/Contact;->getContactNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mContact:Lcom/didi/common/database/Contact;

    invoke-virtual {v0}, Lcom/didi/common/database/Contact;->isInvited()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->setInviteTextColor()V

    .line 133
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
